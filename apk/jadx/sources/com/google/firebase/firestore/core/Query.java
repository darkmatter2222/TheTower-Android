package com.google.firebase.firestore.core;

import com.google.firebase.firestore.FirebaseFirestore;
import com.google.firebase.firestore.Pipeline;
import com.google.firebase.firestore.RealtimePipeline;
import com.google.firebase.firestore.UserDataReader;
import com.google.firebase.firestore.model.DatabaseId;
import com.google.firebase.firestore.model.Document;
import com.google.firebase.firestore.model.DocumentKey;
import com.google.firebase.firestore.model.FieldPath;
import com.google.firebase.firestore.model.ResourcePath;
import com.google.firebase.firestore.pipeline.BooleanExpression;
import com.google.firebase.firestore.pipeline.CollectionGroupOptions;
import com.google.firebase.firestore.pipeline.CollectionGroupSource;
import com.google.firebase.firestore.pipeline.CollectionSource;
import com.google.firebase.firestore.pipeline.DocumentsSource;
import com.google.firebase.firestore.pipeline.Expression;
import com.google.firebase.firestore.pipeline.Field;
import com.google.firebase.firestore.pipeline.InternalOptions;
import com.google.firebase.firestore.pipeline.LimitStage;
import com.google.firebase.firestore.pipeline.Ordering;
import com.google.firebase.firestore.pipeline.SortStage;
import com.google.firebase.firestore.pipeline.Stage;
import com.google.firebase.firestore.pipeline.WhereStage;
import com.google.firebase.firestore.remote.RemoteSerializer;
import com.google.firebase.firestore.util.Assert;
import com.google.firebase.firestore.util.BiFunction;
import com.google.firebase.firestore.util.Function;
import com.google.firebase.firestore.util.IntFunction;
import com.google.firestore.v1.Value;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.SortedSet;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes4.dex */
public final class Query {
    private static final OrderBy KEY_ORDERING_ASC = OrderBy.getInstance(OrderBy.Direction.ASCENDING, FieldPath.KEY_PATH);
    private static final OrderBy KEY_ORDERING_DESC = OrderBy.getInstance(OrderBy.Direction.DESCENDING, FieldPath.KEY_PATH);
    private final String collectionGroup;
    private final Bound endAt;
    private final List<OrderBy> explicitSortOrder;
    private final List<Filter> filters;
    private final long limit;
    private final LimitType limitType;
    private Target memoizedAggregateTarget;
    private List<OrderBy> memoizedNormalizedOrderBys;
    private Target memoizedTarget;
    private final ResourcePath path;
    private final Bound startAt;

    public enum LimitType {
        LIMIT_TO_FIRST,
        LIMIT_TO_LAST
    }

    private static class QueryComparator implements Comparator<Document> {
        private final List<OrderBy> sortOrder;

        QueryComparator(List<OrderBy> list) {
            boolean z;
            Iterator<OrderBy> it = list.iterator();
            loop0: while (true) {
                z = false;
                while (true) {
                    if (!it.hasNext()) {
                        break loop0;
                    } else {
                        z = (z || it.next().getField().equals(FieldPath.KEY_PATH)) ? true : z;
                    }
                }
            }
            if (!z) {
                throw new IllegalArgumentException("QueryComparator needs to have a key ordering");
            }
            this.sortOrder = list;
        }

        @Override // java.util.Comparator
        public int compare(Document document, Document document2) {
            Iterator<OrderBy> it = this.sortOrder.iterator();
            while (it.hasNext()) {
                int iCompare = it.next().compare(document, document2);
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return 0;
        }
    }

    public Query(ResourcePath resourcePath, String str) {
        this(resourcePath, str, Collections.emptyList(), Collections.emptyList(), -1L, LimitType.LIMIT_TO_FIRST, null, null);
    }

    public Query(ResourcePath resourcePath, String str, List<Filter> list, List<OrderBy> list2, long j, LimitType limitType, Bound bound, Bound bound2) {
        this.path = resourcePath;
        this.collectionGroup = str;
        this.explicitSortOrder = list2;
        this.filters = list;
        this.limit = j;
        this.limitType = limitType;
        this.startAt = bound;
        this.endAt = bound2;
    }

    public static Query atPath(ResourcePath resourcePath) {
        return new Query(resourcePath, null);
    }

    private List<Stage<?>> convertToStages(UserDataReader userDataReader) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(pipelineSource(userDataReader.getDatabaseId()));
        Iterator<Filter> it = this.filters.iterator();
        while (it.hasNext()) {
            arrayList.add(new WhereStage(it.next().toPipelineExpr(), InternalOptions.EMPTY));
        }
        List<OrderBy> normalizedOrderBy = getNormalizedOrderBy();
        ArrayList arrayList2 = new ArrayList(normalizedOrderBy.size());
        ArrayList<Ordering> arrayList3 = new ArrayList(normalizedOrderBy.size());
        for (OrderBy orderBy : normalizedOrderBy) {
            Field field = new Field(orderBy.getField());
            arrayList2.add(field);
            if (orderBy.getDirection() == OrderBy.Direction.ASCENDING) {
                arrayList3.add(field.ascending());
            } else {
                arrayList3.add(field.descending());
            }
        }
        ArrayList arrayList4 = new ArrayList();
        Iterator<OrderBy> it2 = this.explicitSortOrder.iterator();
        while (it2.hasNext()) {
            arrayList4.add(new Field(it2.next().getField()));
        }
        if (arrayList4.size() == 1) {
            arrayList.add(new WhereStage(((Field) arrayList4.get(0)).exists(), InternalOptions.EMPTY));
        } else if (arrayList4.size() > 1) {
            IntFunction intFunction = new IntFunction() { // from class: com.google.firebase.firestore.core.Query$$ExternalSyntheticLambda0
                @Override // com.google.firebase.firestore.util.IntFunction
                public final Object apply(int i) {
                    return Query.lambda$convertToStages$0(i);
                }
            };
            final Expression.Companion companion = Expression.INSTANCE;
            Objects.requireNonNull(companion);
            arrayList.add(new WhereStage(Expression.and(((Field) arrayList4.get(0)).exists(), (BooleanExpression[]) skipFirstToArray(arrayList4, intFunction, new Function() { // from class: com.google.firebase.firestore.core.Query$$ExternalSyntheticLambda1
                @Override // com.google.firebase.firestore.util.Function
                public final Object apply(Object obj) {
                    return companion.exists((Field) obj);
                }
            })), InternalOptions.EMPTY));
        }
        if (this.startAt != null) {
            arrayList.add(new WhereStage(whereConditionsFromCursor(this.startAt, arrayList2, new BiFunction() { // from class: com.google.firebase.firestore.core.Query$$ExternalSyntheticLambda2
                @Override // com.google.firebase.firestore.util.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return Expression.greaterThan((Expression) obj, obj2);
                }
            }), InternalOptions.EMPTY));
        }
        if (this.endAt != null) {
            arrayList.add(new WhereStage(whereConditionsFromCursor(this.endAt, arrayList2, new BiFunction() { // from class: com.google.firebase.firestore.core.Query$$ExternalSyntheticLambda3
                @Override // com.google.firebase.firestore.util.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return Expression.lessThan((Expression) obj, obj2);
                }
            }), InternalOptions.EMPTY));
        }
        if (!hasLimit()) {
            arrayList.add(new SortStage((Ordering[]) arrayList3.toArray(new Ordering[0]), InternalOptions.EMPTY));
            return arrayList;
        }
        if (this.limitType == LimitType.LIMIT_TO_FIRST) {
            arrayList.add(new SortStage((Ordering[]) arrayList3.toArray(new Ordering[0]), InternalOptions.EMPTY));
            arrayList.add(new LimitStage((int) this.limit, InternalOptions.EMPTY));
            return arrayList;
        }
        if (this.explicitSortOrder.isEmpty()) {
            throw new IllegalStateException("limitToLast() queries require specifying at least one orderBy() clause");
        }
        ArrayList arrayList5 = new ArrayList();
        for (Ordering ordering : arrayList3) {
            arrayList5.add(ordering.getDir() == Ordering.Direction.ASCENDING ? ordering.getExpr().descending() : ordering.getExpr().ascending());
        }
        arrayList.add(new SortStage((Ordering[]) arrayList5.toArray(new Ordering[0]), InternalOptions.EMPTY));
        arrayList.add(new LimitStage((int) this.limit, InternalOptions.EMPTY));
        arrayList.add(new SortStage((Ordering[]) arrayList3.toArray(new Ordering[0]), InternalOptions.EMPTY));
        return arrayList;
    }

    static /* synthetic */ BooleanExpression[] lambda$convertToStages$0(int i) {
        return new BooleanExpression[i];
    }

    private boolean matchesBounds(Document document) {
        Bound bound = this.startAt;
        if (bound != null && !bound.sortsBeforeDocument(getNormalizedOrderBy(), document)) {
            return false;
        }
        Bound bound2 = this.endAt;
        return bound2 == null || bound2.sortsAfterDocument(getNormalizedOrderBy(), document);
    }

    private boolean matchesFilters(Document document) {
        Iterator<Filter> it = this.filters.iterator();
        while (it.hasNext()) {
            if (!it.next().matches(document)) {
                return false;
            }
        }
        return true;
    }

    private boolean matchesOrderBy(Document document) {
        for (OrderBy orderBy : getNormalizedOrderBy()) {
            if (!orderBy.getField().equals(FieldPath.KEY_PATH) && document.getField(orderBy.field) == null) {
                return false;
            }
        }
        return true;
    }

    private boolean matchesPathAndCollectionGroup(Document document) {
        ResourcePath path = document.getKey().getPath();
        if (this.collectionGroup != null) {
            return document.getKey().hasCollectionId(this.collectionGroup) && this.path.isPrefixOf(path);
        }
        if (DocumentKey.isDocumentKey(this.path)) {
            return this.path.equals(path);
        }
        return this.path.isPrefixOf(path) && this.path.length() == path.length() - 1;
    }

    private Stage<?> pipelineSource(DatabaseId databaseId) {
        if (isDocumentQuery()) {
            return new DocumentsSource(this.path.canonicalString());
        }
        return isCollectionGroupQuery() ? new CollectionGroupSource(this.collectionGroup, new CollectionGroupOptions()) : new CollectionSource(this.path, new RemoteSerializer(databaseId), InternalOptions.EMPTY);
    }

    private static <T, R> R[] skipFirstToArray(List<T> list, IntFunction<R[]> intFunction, Function<T, R> function) {
        int size = list.size();
        R[] rArrApply = intFunction.apply(size - 1);
        for (int i = 1; i < size; i++) {
            rArrApply[i - 1] = function.apply(list.get(i));
        }
        return rArrApply;
    }

    private static BooleanExpression whereConditionsFromCursor(Bound bound, List<Field> list, BiFunction<Expression, Object, BooleanExpression> biFunction) {
        List<Value> position = bound.getPosition();
        int size = position.size();
        Assert.hardAssert(size <= list.size(), "Bound positions must not exceed order fields.", new Object[0]);
        int i = size - 1;
        BooleanExpression booleanExpressionApply = biFunction.apply(list.get(i), position.get(i));
        if (bound.isInclusive()) {
            booleanExpressionApply = Expression.or(booleanExpressionApply, Expression.equal(list.get(i), position.get(i)));
        }
        for (int i2 = size - 2; i2 >= 0; i2--) {
            Field field = list.get(i2);
            Value value = position.get(i2);
            booleanExpressionApply = Expression.or(biFunction.apply(field, value), Expression.and(field.equal(value), booleanExpressionApply));
        }
        return booleanExpressionApply;
    }

    public Query asCollectionQueryAtPath(ResourcePath resourcePath) {
        return new Query(resourcePath, null, this.filters, this.explicitSortOrder, this.limit, this.limitType, this.startAt, this.endAt);
    }

    public Comparator<Document> comparator() {
        return new QueryComparator(getNormalizedOrderBy());
    }

    public Query endAt(Bound bound) {
        return new Query(this.path, this.collectionGroup, this.filters, this.explicitSortOrder, this.limit, this.limitType, this.startAt, bound);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Query query = (Query) obj;
        if (this.limitType != query.limitType) {
            return false;
        }
        return toTarget().equals(query.toTarget());
    }

    public Query filter(Filter filter) {
        Assert.hardAssert(!isDocumentQuery(), "No filter is allowed for document query", new Object[0]);
        ArrayList arrayList = new ArrayList(this.filters);
        arrayList.add(filter);
        return new Query(this.path, this.collectionGroup, arrayList, this.explicitSortOrder, this.limit, this.limitType, this.startAt, this.endAt);
    }

    public String getCanonicalId() {
        return toTarget().getCanonicalId() + "|lt:" + this.limitType;
    }

    public String getCollectionGroup() {
        return this.collectionGroup;
    }

    public Bound getEndAt() {
        return this.endAt;
    }

    public List<OrderBy> getExplicitOrderBy() {
        return this.explicitSortOrder;
    }

    public List<Filter> getFilters() {
        return this.filters;
    }

    public SortedSet<FieldPath> getInequalityFilterFields() {
        TreeSet treeSet = new TreeSet();
        Iterator<Filter> it = getFilters().iterator();
        while (it.hasNext()) {
            for (FieldFilter fieldFilter : it.next().getFlattenedFilters()) {
                if (fieldFilter.isInequality()) {
                    treeSet.add(fieldFilter.getField());
                }
            }
        }
        return treeSet;
    }

    public long getLimit() {
        return this.limit;
    }

    public LimitType getLimitType() {
        return this.limitType;
    }

    public synchronized List<OrderBy> getNormalizedOrderBy() {
        OrderBy.Direction direction;
        if (this.memoizedNormalizedOrderBys == null) {
            ArrayList arrayList = new ArrayList();
            HashSet hashSet = new HashSet();
            for (OrderBy orderBy : this.explicitSortOrder) {
                arrayList.add(orderBy);
                hashSet.add(orderBy.field.canonicalString());
            }
            if (this.explicitSortOrder.size() > 0) {
                List<OrderBy> list = this.explicitSortOrder;
                direction = list.get(list.size() - 1).getDirection();
            } else {
                direction = OrderBy.Direction.ASCENDING;
            }
            for (FieldPath fieldPath : getInequalityFilterFields()) {
                if (!hashSet.contains(fieldPath.canonicalString()) && !fieldPath.isKeyField()) {
                    arrayList.add(OrderBy.getInstance(direction, fieldPath));
                }
            }
            if (!hashSet.contains(FieldPath.KEY_PATH.canonicalString())) {
                arrayList.add(direction.equals(OrderBy.Direction.ASCENDING) ? KEY_ORDERING_ASC : KEY_ORDERING_DESC);
            }
            this.memoizedNormalizedOrderBys = Collections.unmodifiableList(arrayList);
        }
        return this.memoizedNormalizedOrderBys;
    }

    public ResourcePath getPath() {
        return this.path;
    }

    public Bound getStartAt() {
        return this.startAt;
    }

    public boolean hasLimit() {
        return this.limit != -1;
    }

    public int hashCode() {
        return (toTarget().hashCode() * 31) + this.limitType.hashCode();
    }

    public boolean isCollectionGroupQuery() {
        return this.collectionGroup != null;
    }

    public boolean isDocumentQuery() {
        return DocumentKey.isDocumentKey(this.path) && this.collectionGroup == null && this.filters.isEmpty();
    }

    public Query limitToFirst(long j) {
        return new Query(this.path, this.collectionGroup, this.filters, this.explicitSortOrder, j, LimitType.LIMIT_TO_FIRST, this.startAt, this.endAt);
    }

    public Query limitToLast(long j) {
        return new Query(this.path, this.collectionGroup, this.filters, this.explicitSortOrder, j, LimitType.LIMIT_TO_LAST, this.startAt, this.endAt);
    }

    public boolean matches(Document document) {
        return document.isFoundDocument() && matchesPathAndCollectionGroup(document) && matchesOrderBy(document) && matchesFilters(document) && matchesBounds(document);
    }

    public boolean matchesAllDocuments() {
        return this.filters.isEmpty() && this.limit == -1 && this.startAt == null && this.endAt == null && (getExplicitOrderBy().isEmpty() || (getExplicitOrderBy().size() == 1 && getExplicitOrderBy().get(0).field.isKeyField()));
    }

    public Query orderBy(OrderBy orderBy) {
        Assert.hardAssert(!isDocumentQuery(), "No ordering is allowed for document query", new Object[0]);
        ArrayList arrayList = new ArrayList(this.explicitSortOrder);
        arrayList.add(orderBy);
        return new Query(this.path, this.collectionGroup, this.filters, arrayList, this.limit, this.limitType, this.startAt, this.endAt);
    }

    public Query startAt(Bound bound) {
        return new Query(this.path, this.collectionGroup, this.filters, this.explicitSortOrder, this.limit, this.limitType, bound, this.endAt);
    }

    public synchronized Target toAggregateTarget() {
        if (this.memoizedAggregateTarget == null) {
            this.memoizedAggregateTarget = toTarget(this.explicitSortOrder);
        }
        return this.memoizedAggregateTarget;
    }

    public Pipeline toPipeline(FirebaseFirestore firebaseFirestore, UserDataReader userDataReader) {
        return new Pipeline(firebaseFirestore, userDataReader, convertToStages(userDataReader));
    }

    public RealtimePipeline toRealtimePipeline(FirebaseFirestore firebaseFirestore, UserDataReader userDataReader) {
        return new RealtimePipeline(firebaseFirestore, new RemoteSerializer(userDataReader.getDatabaseId()), userDataReader, convertToStages(userDataReader), null);
    }

    public String toString() {
        return "Query(target=" + toTarget().toString() + ";limitType=" + this.limitType.toString() + ")";
    }

    public synchronized Target toTarget() {
        if (this.memoizedTarget == null) {
            this.memoizedTarget = toTarget(getNormalizedOrderBy());
        }
        return this.memoizedTarget;
    }

    public synchronized Target toTarget(List<OrderBy> list) {
        if (this.limitType == LimitType.LIMIT_TO_FIRST) {
            return new Target(getPath(), getCollectionGroup(), getFilters(), list, this.limit, getStartAt(), getEndAt());
        }
        ArrayList arrayList = new ArrayList();
        for (OrderBy orderBy : list) {
            arrayList.add(OrderBy.getInstance(orderBy.getDirection() == OrderBy.Direction.DESCENDING ? OrderBy.Direction.ASCENDING : OrderBy.Direction.DESCENDING, orderBy.getField()));
        }
        return new Target(getPath(), getCollectionGroup(), getFilters(), arrayList, this.limit, this.endAt != null ? new Bound(this.endAt.getPosition(), this.endAt.isInclusive()) : null, this.startAt != null ? new Bound(this.startAt.getPosition(), this.startAt.isInclusive()) : null);
    }
}
