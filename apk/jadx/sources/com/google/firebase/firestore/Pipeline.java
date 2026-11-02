package com.google.firebase.firestore;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.Timestamp;
import com.google.firebase.firestore.core.FirestoreClient;
import com.google.firebase.firestore.model.DatabaseId;
import com.google.firebase.firestore.model.DocumentKey;
import com.google.firebase.firestore.pipeline.AbstractOptions;
import com.google.firebase.firestore.pipeline.AddFieldsStage;
import com.google.firebase.firestore.pipeline.AggregateOptions;
import com.google.firebase.firestore.pipeline.AggregateStage;
import com.google.firebase.firestore.pipeline.AliasedAggregate;
import com.google.firebase.firestore.pipeline.AliasedExpression;
import com.google.firebase.firestore.pipeline.BooleanExpression;
import com.google.firebase.firestore.pipeline.DefineStage;
import com.google.firebase.firestore.pipeline.DistinctStage;
import com.google.firebase.firestore.pipeline.Expression;
import com.google.firebase.firestore.pipeline.Field;
import com.google.firebase.firestore.pipeline.FindNearestOptions;
import com.google.firebase.firestore.pipeline.FindNearestStage;
import com.google.firebase.firestore.pipeline.FunctionExpression;
import com.google.firebase.firestore.pipeline.InternalOptions;
import com.google.firebase.firestore.pipeline.LimitStage;
import com.google.firebase.firestore.pipeline.OffsetStage;
import com.google.firebase.firestore.pipeline.Ordering;
import com.google.firebase.firestore.pipeline.RawStage;
import com.google.firebase.firestore.pipeline.RemoveFieldsStage;
import com.google.firebase.firestore.pipeline.ReplaceStage;
import com.google.firebase.firestore.pipeline.SampleStage;
import com.google.firebase.firestore.pipeline.SearchStage;
import com.google.firebase.firestore.pipeline.SelectStage;
import com.google.firebase.firestore.pipeline.Selectable;
import com.google.firebase.firestore.pipeline.SortStage;
import com.google.firebase.firestore.pipeline.Stage;
import com.google.firebase.firestore.pipeline.UnionStage;
import com.google.firebase.firestore.pipeline.UnnestOptions;
import com.google.firebase.firestore.pipeline.UnnestStage;
import com.google.firebase.firestore.pipeline.WhereStage;
import com.google.firebase.firestore.pipeline.evaluation.UtilsKt;
import com.google.firebase.firestore.util.Logger;
import com.google.firestore.v1.ExecutePipelineRequest;
import com.google.firestore.v1.StructuredPipeline;
import com.google.firestore.v1.Value;
import com.ironsource.C3510b4;
import com.ironsource.C3635i2;
import com.ironsource.C3908x1;
import com.ironsource.C3927y2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.SpreadBuilder;
import p005kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: compiled from: Pipeline.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000è\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0003mnoB/\b\u0000\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0010\u0010\u0006\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\b0\u0007¢\u0006\u0004\b\t\u0010\nB)\b\u0010\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\b¢\u0006\u0004\b\t\u0010\fJ\u0014\u0010\r\u001a\u00020\u00002\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\bH\u0002J\u001f\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0004\u001a\u00020\u0005H\u0000¢\u0006\u0002\b\u0012J\u0015\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0004\u001a\u00020\u0005H\u0000¢\u0006\u0002\b\u0015J\u0017\u0010\u0016\u001a\u00020\u00172\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0000¢\u0006\u0002\b\u0018J\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aJ\u0014\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a2\u0006\u0010\u0010\u001a\u00020\u001cJ\u001d\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0000¢\u0006\u0002\b\u001dJ\u0015\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0000¢\u0006\u0002\b\"J\u000e\u0010#\u001a\u00020\u00002\u0006\u0010#\u001a\u00020$J'\u0010%\u001a\u00020\u00002\u0006\u0010&\u001a\u00020'2\u0012\u0010(\u001a\n\u0012\u0006\b\u0001\u0012\u00020'0)\"\u00020'¢\u0006\u0002\u0010*J'\u0010+\u001a\u00020\u00002\u0006\u0010&\u001a\u00020,2\u0012\u0010(\u001a\n\u0012\u0006\b\u0001\u0012\u00020,0)\"\u00020,¢\u0006\u0002\u0010-J'\u0010+\u001a\u00020\u00002\u0006\u0010&\u001a\u00020.2\u0012\u0010(\u001a\n\u0012\u0006\b\u0001\u0012\u00020.0)\"\u00020.¢\u0006\u0002\u0010/J'\u00100\u001a\u00020\u00002\u0006\u00101\u001a\u00020'2\u0012\u00102\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010)\"\u00020\u0001¢\u0006\u0002\u00103J'\u00100\u001a\u00020\u00002\u0006\u00104\u001a\u00020.2\u0012\u00102\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010)\"\u00020\u0001¢\u0006\u0002\u00105J'\u00106\u001a\u00020\u00002\u0006\u00107\u001a\u0002082\u0012\u00109\u001a\n\u0012\u0006\b\u0001\u0012\u0002080)\"\u000208¢\u0006\u0002\u0010:J\u000e\u0010;\u001a\u00020\u00002\u0006\u0010<\u001a\u00020=J\u000e\u0010>\u001a\u00020\u00002\u0006\u0010>\u001a\u00020?J\u000e\u0010@\u001a\u00020\u00002\u0006\u0010@\u001a\u00020?J'\u0010A\u001a\u00020\u00002\u0006\u0010B\u001a\u00020'2\u0012\u0010C\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010)\"\u00020\u0001¢\u0006\u0002\u00103J'\u0010A\u001a\u00020\u00002\u0006\u0010D\u001a\u00020.2\u0012\u0010C\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010)\"\u00020\u0001¢\u0006\u0002\u00105J'\u0010E\u001a\u00020\u00002\u0006\u0010F\u001a\u00020G2\u0012\u0010H\u001a\n\u0012\u0006\b\u0001\u0012\u00020G0)\"\u00020G¢\u0006\u0002\u0010IJ\u000e\u0010E\u001a\u00020\u00002\u0006\u0010J\u001a\u00020KJ\u0016\u0010E\u001a\u00020\u00002\u0006\u0010J\u001a\u00020K2\u0006\u0010\u0010\u001a\u00020LJ\u001e\u0010M\u001a\u00020\u00002\u0006\u0010N\u001a\u00020.2\u0006\u0010O\u001a\u00020P2\u0006\u0010Q\u001a\u00020RJ\u001e\u0010M\u001a\u00020\u00002\u0006\u0010N\u001a\u00020,2\u0006\u0010O\u001a\u00020P2\u0006\u0010Q\u001a\u00020RJ&\u0010M\u001a\u00020\u00002\u0006\u0010N\u001a\u00020.2\u0006\u0010O\u001a\u00020S2\u0006\u0010Q\u001a\u00020R2\u0006\u0010\u0010\u001a\u00020TJ\u000e\u0010U\u001a\u00020\u00002\u0006\u0010&\u001a\u00020.J\u000e\u0010U\u001a\u00020\u00002\u0006\u0010V\u001a\u00020SJ\u000e\u0010W\u001a\u00020\u00002\u0006\u0010X\u001a\u00020?J\u000e\u0010W\u001a\u00020\u00002\u0006\u0010W\u001a\u00020YJ\u000e\u0010Z\u001a\u00020\u00002\u0006\u0010[\u001a\u00020\u0000J\u0016\u0010\\\u001a\u00020\u00002\u0006\u0010]\u001a\u00020.2\u0006\u0010^\u001a\u00020.J\u000e\u0010\\\u001a\u00020\u00002\u0006\u0010_\u001a\u00020'J\u0016\u0010\\\u001a\u00020\u00002\u0006\u0010_\u001a\u00020'2\u0006\u0010\u0010\u001a\u00020`J\u000e\u0010\\\u001a\u00020\u00002\u0006\u0010a\u001a\u00020bJ'\u0010c\u001a\u00020\u00002\u0006\u0010d\u001a\u00020e2\u0012\u0010f\u001a\n\u0012\u0006\b\u0001\u0012\u00020e0)\"\u00020e¢\u0006\u0002\u0010gJ\u0006\u0010h\u001a\u00020SJ\u0006\u0010i\u001a\u00020SJ\u0010\u0010j\u001a\u00020\u00002\u0006\u0010k\u001a\u00020lH\u0007R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006p"}, d2 = {"Lcom/google/firebase/firestore/Pipeline;", "", "firestore", "Lcom/google/firebase/firestore/FirebaseFirestore;", "userDataReader", "Lcom/google/firebase/firestore/UserDataReader;", "stages", "", "Lcom/google/firebase/firestore/pipeline/Stage;", "<init>", "(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/UserDataReader;Ljava/util/List;)V", C3510b4.i.q, "(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/UserDataReader;Lcom/google/firebase/firestore/pipeline/Stage;)V", "append", "toStructuredPipelineProto", "Lcom/google/firestore/v1/StructuredPipeline;", "options", "Lcom/google/firebase/firestore/pipeline/InternalOptions;", "toStructuredPipelineProto$com_google_firebase_firebase_firestore", "toPipelineProto", "Lcom/google/firestore/v1/Pipeline;", "toPipelineProto$com_google_firebase_firebase_firestore", "toExecutePipelineRequest", "Lcom/google/firestore/v1/ExecutePipelineRequest;", "toExecutePipelineRequest$com_google_firebase_firebase_firestore", "execute", "Lcom/google/android/gms/tasks/Task;", "Lcom/google/firebase/firestore/Pipeline$Snapshot;", "Lcom/google/firebase/firestore/Pipeline$ExecuteOptions;", "execute$com_google_firebase_firebase_firestore", "documentReference", "Lcom/google/firebase/firestore/DocumentReference;", C3510b4.i.W, "Lcom/google/firebase/firestore/model/DocumentKey;", "documentReference$com_google_firebase_firebase_firestore", "rawStage", "Lcom/google/firebase/firestore/pipeline/RawStage;", "addFields", "field", "Lcom/google/firebase/firestore/pipeline/Selectable;", "additionalFields", "", "(Lcom/google/firebase/firestore/pipeline/Selectable;[Lcom/google/firebase/firestore/pipeline/Selectable;)Lcom/google/firebase/firestore/Pipeline;", "removeFields", "Lcom/google/firebase/firestore/pipeline/Field;", "(Lcom/google/firebase/firestore/pipeline/Field;[Lcom/google/firebase/firestore/pipeline/Field;)Lcom/google/firebase/firestore/Pipeline;", "", "(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/firestore/Pipeline;", "select", "selection", "additionalSelections", "(Lcom/google/firebase/firestore/pipeline/Selectable;[Ljava/lang/Object;)Lcom/google/firebase/firestore/Pipeline;", "fieldName", "(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/firebase/firestore/Pipeline;", "sort", C3927y2.u, "Lcom/google/firebase/firestore/pipeline/Ordering;", "additionalOrders", "(Lcom/google/firebase/firestore/pipeline/Ordering;[Lcom/google/firebase/firestore/pipeline/Ordering;)Lcom/google/firebase/firestore/Pipeline;", "where", "condition", "Lcom/google/firebase/firestore/pipeline/BooleanExpression;", TypedValues.CycleType.S_WAVE_OFFSET, "", "limit", "distinct", "group", "additionalGroups", "groupField", "aggregate", "accumulator", "Lcom/google/firebase/firestore/pipeline/AliasedAggregate;", "additionalAccumulators", "(Lcom/google/firebase/firestore/pipeline/AliasedAggregate;[Lcom/google/firebase/firestore/pipeline/AliasedAggregate;)Lcom/google/firebase/firestore/Pipeline;", "aggregateStage", "Lcom/google/firebase/firestore/pipeline/AggregateStage;", "Lcom/google/firebase/firestore/pipeline/AggregateOptions;", "findNearest", "vectorField", "vectorValue", "", "distanceMeasure", "Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;", "Lcom/google/firebase/firestore/pipeline/Expression;", "Lcom/google/firebase/firestore/pipeline/FindNearestOptions;", "replaceWith", "mapValue", "sample", "documents", "Lcom/google/firebase/firestore/pipeline/SampleStage;", "union", C3635i2.d, "unnest", "arrayField", "alias", "arrayWithAlias", "Lcom/google/firebase/firestore/pipeline/UnnestOptions;", "unnestStage", "Lcom/google/firebase/firestore/pipeline/UnnestStage;", "define", "aliasedExpression", "Lcom/google/firebase/firestore/pipeline/AliasedExpression;", "additionalExpressions", "(Lcom/google/firebase/firestore/pipeline/AliasedExpression;[Lcom/google/firebase/firestore/pipeline/AliasedExpression;)Lcom/google/firebase/firestore/Pipeline;", "toArrayExpression", "toScalarExpression", "search", "searchStage", "Lcom/google/firebase/firestore/pipeline/SearchStage;", "ExecuteOptions", "Snapshot", "ObserverSnapshotTask", "com.google.firebase-firebase-firestore"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class Pipeline {
    private final FirebaseFirestore firestore;
    private final List<Stage<?>> stages;
    private final UserDataReader userDataReader;

    /* JADX INFO: compiled from: Pipeline.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\fB\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\t\b\u0016¢\u0006\u0004\b\u0004\u0010\u0006J\u0015\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003H\u0010¢\u0006\u0002\b\bJ\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000b¨\u0006\r"}, d2 = {"Lcom/google/firebase/firestore/Pipeline$ExecuteOptions;", "Lcom/google/firebase/firestore/pipeline/AbstractOptions;", "options", "Lcom/google/firebase/firestore/pipeline/InternalOptions;", "<init>", "(Lcom/google/firebase/firestore/pipeline/InternalOptions;)V", "()V", C3908x1.o, "self$com_google_firebase_firebase_firestore", "withIndexMode", "indexMode", "Lcom/google/firebase/firestore/Pipeline$ExecuteOptions$IndexMode;", "IndexMode", "com.google.firebase-firebase-firestore"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ExecuteOptions extends AbstractOptions<ExecuteOptions> {

        /* JADX INFO: compiled from: Pipeline.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000 \b2\u00020\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/google/firebase/firestore/Pipeline$ExecuteOptions$IndexMode;", "", "value", "", "<init>", "(Ljava/lang/String;)V", "getValue$com_google_firebase_firebase_firestore", "()Ljava/lang/String;", "Companion", "com.google.firebase-firebase-firestore"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class IndexMode {
            public static final IndexMode RECOMMENDED = new IndexMode("recommended");
            private final String value;

            private IndexMode(String str) {
                this.value = str;
            }

            /* JADX INFO: renamed from: getValue$com_google_firebase_firebase_firestore, reason: from getter */
            public final String getValue() {
                return this.value;
            }
        }

        public ExecuteOptions() {
            this(InternalOptions.EMPTY);
        }

        private ExecuteOptions(InternalOptions internalOptions) {
            super(internalOptions);
        }

        @Override // com.google.firebase.firestore.pipeline.AbstractOptions
        public ExecuteOptions self$com_google_firebase_firebase_firestore(InternalOptions options) {
            Intrinsics.checkNotNullParameter(options, "options");
            return new ExecuteOptions(options);
        }

        public final ExecuteOptions withIndexMode(IndexMode indexMode) {
            Intrinsics.checkNotNullParameter(indexMode, "indexMode");
            return with("index_mode", indexMode.getValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: Pipeline.kt */
    @Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J:\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016J\u0010\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u0015H\u0016J\u0010\u0010\u0019\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\b0\u001d8F¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001f¨\u0006 "}, d2 = {"Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;", "Lcom/google/firebase/firestore/PipelineResultObserver;", "<init>", "(Lcom/google/firebase/firestore/Pipeline;)V", "userDataWriter", "Lcom/google/firebase/firestore/UserDataWriter;", "taskCompletionSource", "Lcom/google/android/gms/tasks/TaskCompletionSource;", "Lcom/google/firebase/firestore/Pipeline$Snapshot;", "results", "", "Lcom/google/firebase/firestore/PipelineResult;", "onDocument", "", C3510b4.i.W, "Lcom/google/firebase/firestore/model/DocumentKey;", "data", "", "", "Lcom/google/firestore/v1/Value;", "createTime", "Lcom/google/firebase/Timestamp;", "updateTime", "onComplete", "executionTime", "onError", "exception", "Lcom/google/firebase/firestore/FirebaseFirestoreException;", "task", "Lcom/google/android/gms/tasks/Task;", "getTask", "()Lcom/google/android/gms/tasks/Task;", "com.google.firebase-firebase-firestore"}, k = 1, mv = {2, 0, 0}, xi = 48)
    final class ObserverSnapshotTask implements PipelineResultObserver {
        private final UserDataWriter userDataWriter;
        private final TaskCompletionSource<Snapshot> taskCompletionSource = new TaskCompletionSource<>();
        private final List<PipelineResult> results = new ArrayList();

        public ObserverSnapshotTask() {
            this.userDataWriter = new UserDataWriter(Pipeline.this.firestore, DocumentSnapshot.ServerTimestampBehavior.DEFAULT);
        }

        public final Task<Snapshot> getTask() {
            Task<Snapshot> task = this.taskCompletionSource.getTask();
            Intrinsics.checkNotNullExpressionValue(task, "getTask(...)");
            return task;
        }

        @Override // com.google.firebase.firestore.PipelineResultObserver
        public void onComplete(Timestamp executionTime) {
            Intrinsics.checkNotNullParameter(executionTime, "executionTime");
            this.taskCompletionSource.setResult(new Snapshot(executionTime, this.results));
        }

        @Override // com.google.firebase.firestore.PipelineResultObserver
        public void onDocument(DocumentKey key, Map<String, Value> data, Timestamp createTime, Timestamp updateTime) {
            Intrinsics.checkNotNullParameter(data, "data");
            this.results.add(new PipelineResult(this.userDataWriter, key == null ? null : new DocumentReference(key, Pipeline.this.firestore), data, createTime, updateTime));
        }

        @Override // com.google.firebase.firestore.PipelineResultObserver
        public void onError(FirebaseFirestoreException exception) {
            Intrinsics.checkNotNullParameter(exception, "exception");
            this.taskCompletionSource.setException(exception);
        }
    }

    /* JADX INFO: compiled from: Pipeline.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0010(\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00020\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0017"}, d2 = {"Lcom/google/firebase/firestore/Pipeline$Snapshot;", "", "Lcom/google/firebase/firestore/PipelineResult;", "executionTime", "Lcom/google/firebase/Timestamp;", "results", "", "<init>", "(Lcom/google/firebase/Timestamp;Ljava/util/List;)V", "getExecutionTime", "()Lcom/google/firebase/Timestamp;", "getResults", "()Ljava/util/List;", "iterator", "", "toString", "", "equals", "", C3635i2.d, "", "hashCode", "", "com.google.firebase-firebase-firestore"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Snapshot implements Iterable<PipelineResult>, KMappedMarker {
        private final Timestamp executionTime;
        private final List<PipelineResult> results;

        public Snapshot(Timestamp executionTime, List<PipelineResult> results) {
            Intrinsics.checkNotNullParameter(executionTime, "executionTime");
            Intrinsics.checkNotNullParameter(results, "results");
            this.executionTime = executionTime;
            this.results = results;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!Intrinsics.areEqual(getClass(), other != null ? other.getClass() : null)) {
                return false;
            }
            Intrinsics.checkNotNull(other, "null cannot be cast to non-null type com.google.firebase.firestore.Pipeline.Snapshot");
            return Intrinsics.areEqual(this.results, ((Snapshot) other).results);
        }

        public final Timestamp getExecutionTime() {
            return this.executionTime;
        }

        public final List<PipelineResult> getResults() {
            return this.results;
        }

        public int hashCode() {
            return this.results.hashCode();
        }

        @Override // java.lang.Iterable
        public Iterator<PipelineResult> iterator() {
            return this.results.iterator();
        }

        public String toString() {
            return "Snapshot{executionTime=" + this.executionTime + ", results=" + this.results + AbstractJsonLexerKt.END_OBJ;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Pipeline(FirebaseFirestore firebaseFirestore, UserDataReader userDataReader, Stage<?> stage) {
        this(firebaseFirestore, userDataReader, (List<? extends Stage<?>>) CollectionsKt.listOf(stage));
        Intrinsics.checkNotNullParameter(stage, "stage");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Pipeline(FirebaseFirestore firebaseFirestore, UserDataReader userDataReader, List<? extends Stage<?>> stages) {
        Intrinsics.checkNotNullParameter(stages, "stages");
        this.firestore = firebaseFirestore;
        this.userDataReader = userDataReader;
        this.stages = stages;
    }

    private final Pipeline append(Stage<?> stage) {
        return new Pipeline(this.firestore, this.userDataReader, (List<? extends Stage<?>>) CollectionsKt.plus((Collection<? extends Stage<?>>) this.stages, stage));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit execute$lambda$2(ExecutePipelineRequest executePipelineRequest, ObserverSnapshotTask observerSnapshotTask, FirestoreClient firestoreClient) {
        Intrinsics.checkNotNull(firestoreClient);
        firestoreClient.executePipeline(executePipelineRequest, observerSnapshotTask);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Pipeline addFields(Selectable field, Selectable... additionalFields) {
        Intrinsics.checkNotNullParameter(field, "field");
        Intrinsics.checkNotNullParameter(additionalFields, "additionalFields");
        SpreadBuilder spreadBuilder = new SpreadBuilder(2);
        spreadBuilder.add(field);
        spreadBuilder.addSpread(additionalFields);
        return append(new AddFieldsStage((Selectable[]) spreadBuilder.toArray(new Selectable[spreadBuilder.size()]), null, 2, 0 == true ? 1 : 0));
    }

    public final Pipeline aggregate(AggregateStage aggregateStage) {
        Intrinsics.checkNotNullParameter(aggregateStage, "aggregateStage");
        return aggregate(aggregateStage, new AggregateOptions());
    }

    public final Pipeline aggregate(AggregateStage aggregateStage, AggregateOptions options) {
        Intrinsics.checkNotNullParameter(aggregateStage, "aggregateStage");
        Intrinsics.checkNotNullParameter(options, "options");
        return append(aggregateStage.withOptions$com_google_firebase_firebase_firestore(options));
    }

    public final Pipeline aggregate(AliasedAggregate accumulator, AliasedAggregate... additionalAccumulators) {
        Intrinsics.checkNotNullParameter(accumulator, "accumulator");
        Intrinsics.checkNotNullParameter(additionalAccumulators, "additionalAccumulators");
        return append(AggregateStage.INSTANCE.withAccumulators(accumulator, (AliasedAggregate[]) Arrays.copyOf(additionalAccumulators, additionalAccumulators.length)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Pipeline define(AliasedExpression aliasedExpression, AliasedExpression... additionalExpressions) {
        Intrinsics.checkNotNullParameter(aliasedExpression, "aliasedExpression");
        Intrinsics.checkNotNullParameter(additionalExpressions, "additionalExpressions");
        SpreadBuilder spreadBuilder = new SpreadBuilder(2);
        spreadBuilder.add(aliasedExpression);
        spreadBuilder.addSpread(additionalExpressions);
        return append(new DefineStage((AliasedExpression[]) spreadBuilder.toArray(new AliasedExpression[spreadBuilder.size()]), null, 2, 0 == true ? 1 : 0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Pipeline distinct(Selectable group, Object... additionalGroups) {
        Intrinsics.checkNotNullParameter(group, "group");
        Intrinsics.checkNotNullParameter(additionalGroups, "additionalGroups");
        int i = 2;
        SpreadBuilder spreadBuilder = new SpreadBuilder(2);
        spreadBuilder.add(group);
        Selectable.Companion companion = Selectable.INSTANCE;
        ArrayList arrayList = new ArrayList(additionalGroups.length);
        for (Object obj : additionalGroups) {
            arrayList.add(companion.toSelectable(obj));
        }
        spreadBuilder.addSpread(arrayList.toArray(new Selectable[0]));
        return append(new DistinctStage((Selectable[]) spreadBuilder.toArray(new Selectable[spreadBuilder.size()]), null, i, 0 == true ? 1 : 0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Pipeline distinct(String groupField, Object... additionalGroups) {
        Intrinsics.checkNotNullParameter(groupField, "groupField");
        Intrinsics.checkNotNullParameter(additionalGroups, "additionalGroups");
        int i = 2;
        SpreadBuilder spreadBuilder = new SpreadBuilder(2);
        spreadBuilder.add(Expression.INSTANCE.field(groupField));
        Selectable.Companion companion = Selectable.INSTANCE;
        ArrayList arrayList = new ArrayList(additionalGroups.length);
        for (Object obj : additionalGroups) {
            arrayList.add(companion.toSelectable(obj));
        }
        spreadBuilder.addSpread(arrayList.toArray(new Selectable[0]));
        return append(new DistinctStage((Selectable[]) spreadBuilder.toArray(new Selectable[spreadBuilder.size()]), null, i, 0 == true ? 1 : 0));
    }

    public final DocumentReference documentReference$com_google_firebase_firebase_firestore(DocumentKey key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return new DocumentReference(key, this.firestore);
    }

    public final Task<Snapshot> execute() {
        return execute$com_google_firebase_firebase_firestore(null);
    }

    public final Task<Snapshot> execute(ExecuteOptions options) {
        Intrinsics.checkNotNullParameter(options, "options");
        return execute$com_google_firebase_firebase_firestore(options.getOptions());
    }

    public final Task<Snapshot> execute$com_google_firebase_firebase_firestore(InternalOptions options) {
        final ExecutePipelineRequest executePipelineRequest$com_google_firebase_firebase_firestore = toExecutePipelineRequest$com_google_firebase_firebase_firestore(options);
        final ObserverSnapshotTask observerSnapshotTask = new ObserverSnapshotTask();
        Logger.debug("Pipeline", "Executing pipeline: " + executePipelineRequest$com_google_firebase_firebase_firestore, new Object[0]);
        FirebaseFirestore firebaseFirestore = this.firestore;
        if (firebaseFirestore != null) {
        }
        return observerSnapshotTask.getTask();
    }

    public final Pipeline findNearest(Field vectorField, double[] vectorValue, FindNearestStage.DistanceMeasure distanceMeasure) {
        Intrinsics.checkNotNullParameter(vectorField, "vectorField");
        Intrinsics.checkNotNullParameter(vectorValue, "vectorValue");
        Intrinsics.checkNotNullParameter(distanceMeasure, "distanceMeasure");
        return append(FindNearestStage.Companion.of$com_google_firebase_firebase_firestore$default(FindNearestStage.INSTANCE, vectorField, vectorValue, distanceMeasure, (FindNearestOptions) null, 8, (Object) null));
    }

    public final Pipeline findNearest(String vectorField, Expression vectorValue, FindNearestStage.DistanceMeasure distanceMeasure, FindNearestOptions options) {
        Intrinsics.checkNotNullParameter(vectorField, "vectorField");
        Intrinsics.checkNotNullParameter(vectorValue, "vectorValue");
        Intrinsics.checkNotNullParameter(distanceMeasure, "distanceMeasure");
        Intrinsics.checkNotNullParameter(options, "options");
        return append(FindNearestStage.INSTANCE.of$com_google_firebase_firebase_firestore(vectorField, vectorValue, distanceMeasure, options));
    }

    public final Pipeline findNearest(String vectorField, double[] vectorValue, FindNearestStage.DistanceMeasure distanceMeasure) {
        Intrinsics.checkNotNullParameter(vectorField, "vectorField");
        Intrinsics.checkNotNullParameter(vectorValue, "vectorValue");
        Intrinsics.checkNotNullParameter(distanceMeasure, "distanceMeasure");
        return append(FindNearestStage.Companion.of$com_google_firebase_firebase_firestore$default(FindNearestStage.INSTANCE, vectorField, vectorValue, distanceMeasure, (FindNearestOptions) null, 8, (Object) null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Pipeline limit(int limit) {
        return append(new LimitStage(limit, null, 2, 0 == true ? 1 : 0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Pipeline offset(int offset) {
        return append(new OffsetStage(offset, null, 2, 0 == true ? 1 : 0));
    }

    public final Pipeline rawStage(RawStage rawStage) {
        Intrinsics.checkNotNullParameter(rawStage, "rawStage");
        return append(rawStage);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Pipeline removeFields(Field field, Field... additionalFields) {
        Intrinsics.checkNotNullParameter(field, "field");
        Intrinsics.checkNotNullParameter(additionalFields, "additionalFields");
        SpreadBuilder spreadBuilder = new SpreadBuilder(2);
        spreadBuilder.add(field);
        spreadBuilder.addSpread(additionalFields);
        return append(new RemoveFieldsStage((Field[]) spreadBuilder.toArray(new Field[spreadBuilder.size()]), null, 2, 0 == true ? 1 : 0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Pipeline removeFields(String field, String... additionalFields) {
        Intrinsics.checkNotNullParameter(field, "field");
        Intrinsics.checkNotNullParameter(additionalFields, "additionalFields");
        int i = 2;
        SpreadBuilder spreadBuilder = new SpreadBuilder(2);
        spreadBuilder.add(Expression.INSTANCE.field(field));
        Expression.Companion companion = Expression.INSTANCE;
        ArrayList arrayList = new ArrayList(additionalFields.length);
        for (String str : additionalFields) {
            arrayList.add(companion.field(str));
        }
        spreadBuilder.addSpread(arrayList.toArray(new Field[0]));
        return append(new RemoveFieldsStage((Field[]) spreadBuilder.toArray(new Field[spreadBuilder.size()]), null, i, 0 == true ? 1 : 0));
    }

    public final Pipeline replaceWith(Expression mapValue) {
        Intrinsics.checkNotNullParameter(mapValue, "mapValue");
        return append(new ReplaceStage(mapValue, ReplaceStage.Mode.INSTANCE.getFULL_REPLACE(), null, 4, null));
    }

    public final Pipeline replaceWith(String field) {
        Intrinsics.checkNotNullParameter(field, "field");
        return replaceWith(Expression.INSTANCE.field(field));
    }

    public final Pipeline sample(int documents) {
        return append(SampleStage.INSTANCE.withDocLimit(documents));
    }

    public final Pipeline sample(SampleStage sample) {
        Intrinsics.checkNotNullParameter(sample, "sample");
        return append(sample);
    }

    public final Pipeline search(SearchStage searchStage) {
        Intrinsics.checkNotNullParameter(searchStage, "searchStage");
        return append(searchStage);
    }

    public final Pipeline select(Selectable selection, Object... additionalSelections) {
        Intrinsics.checkNotNullParameter(selection, "selection");
        Intrinsics.checkNotNullParameter(additionalSelections, "additionalSelections");
        return append(SelectStage.INSTANCE.of(selection, Arrays.copyOf(additionalSelections, additionalSelections.length)));
    }

    public final Pipeline select(String fieldName, Object... additionalSelections) {
        Intrinsics.checkNotNullParameter(fieldName, "fieldName");
        Intrinsics.checkNotNullParameter(additionalSelections, "additionalSelections");
        return append(SelectStage.INSTANCE.of(fieldName, Arrays.copyOf(additionalSelections, additionalSelections.length)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Pipeline sort(Ordering order, Ordering... additionalOrders) {
        Intrinsics.checkNotNullParameter(order, "order");
        Intrinsics.checkNotNullParameter(additionalOrders, "additionalOrders");
        SpreadBuilder spreadBuilder = new SpreadBuilder(2);
        spreadBuilder.add(order);
        spreadBuilder.addSpread(additionalOrders);
        return append(new SortStage((Ordering[]) spreadBuilder.toArray(new Ordering[spreadBuilder.size()]), null, 2, 0 == true ? 1 : 0));
    }

    public final Expression toArrayExpression() {
        return new FunctionExpression("array", UtilsKt.getNotImplemented(), Expression.INSTANCE.toExprOrConstant$com_google_firebase_firebase_firestore(this));
    }

    public final ExecutePipelineRequest toExecutePipelineRequest$com_google_firebase_firebase_firestore(InternalOptions options) {
        FirebaseFirestore firebaseFirestore = this.firestore;
        if (firebaseFirestore == null) {
            throw new IllegalStateException("This pipeline was created without a database (e.g., as a subcollection pipeline) and cannot be executed directly. It can only be used as part of another pipeline.".toString());
        }
        DatabaseId databaseId = firebaseFirestore.getDatabaseId();
        Intrinsics.checkNotNullExpressionValue(databaseId, "getDatabaseId(...)");
        ExecutePipelineRequest.Builder builderNewBuilder = ExecutePipelineRequest.newBuilder();
        builderNewBuilder.setDatabase("projects/" + databaseId.getProjectId() + "/databases/" + databaseId.getDatabaseId());
        UserDataReader userDataReader = this.firestore.getUserDataReader();
        Intrinsics.checkNotNullExpressionValue(userDataReader, "getUserDataReader(...)");
        builderNewBuilder.setStructuredPipeline(toStructuredPipelineProto$com_google_firebase_firebase_firestore(options, userDataReader));
        ExecutePipelineRequest executePipelineRequestBuild = builderNewBuilder.build();
        Intrinsics.checkNotNullExpressionValue(executePipelineRequestBuild, "build(...)");
        return executePipelineRequestBuild;
    }

    public final com.google.firestore.v1.Pipeline toPipelineProto$com_google_firebase_firebase_firestore(UserDataReader userDataReader) {
        Intrinsics.checkNotNullParameter(userDataReader, "userDataReader");
        com.google.firestore.v1.Pipeline.Builder builderNewBuilder = com.google.firestore.v1.Pipeline.newBuilder();
        List<Stage<?>> list = this.stages;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((Stage) it.next()).toProtoStage$com_google_firebase_firebase_firestore(userDataReader));
        }
        com.google.firestore.v1.Pipeline pipelineBuild = builderNewBuilder.addAllStages(arrayList).build();
        Intrinsics.checkNotNullExpressionValue(pipelineBuild, "build(...)");
        return pipelineBuild;
    }

    public final Expression toScalarExpression() {
        return new FunctionExpression("scalar", UtilsKt.getNotImplemented(), Expression.INSTANCE.toExprOrConstant$com_google_firebase_firebase_firestore(this));
    }

    public final StructuredPipeline toStructuredPipelineProto$com_google_firebase_firebase_firestore(InternalOptions options, UserDataReader userDataReader) {
        Intrinsics.checkNotNullParameter(userDataReader, "userDataReader");
        StructuredPipeline.Builder builderNewBuilder = StructuredPipeline.newBuilder();
        builderNewBuilder.setPipeline(toPipelineProto$com_google_firebase_firebase_firestore(userDataReader));
        if (options != null) {
            options.forEach$com_google_firebase_firebase_firestore(new Pipeline$toStructuredPipelineProto$1(builderNewBuilder));
        }
        StructuredPipeline structuredPipelineBuild = builderNewBuilder.build();
        Intrinsics.checkNotNullExpressionValue(structuredPipelineBuild, "build(...)");
        return structuredPipelineBuild;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Pipeline union(Pipeline other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return append(new UnionStage(other, null, 2, 0 == true ? 1 : 0));
    }

    public final Pipeline unnest(Selectable arrayWithAlias) {
        Intrinsics.checkNotNullParameter(arrayWithAlias, "arrayWithAlias");
        return unnest(arrayWithAlias, new UnnestOptions());
    }

    public final Pipeline unnest(Selectable arrayWithAlias, UnnestOptions options) {
        Intrinsics.checkNotNullParameter(arrayWithAlias, "arrayWithAlias");
        Intrinsics.checkNotNullParameter(options, "options");
        return append(new UnnestStage(arrayWithAlias, options.getOptions()));
    }

    public final Pipeline unnest(UnnestStage unnestStage) {
        Intrinsics.checkNotNullParameter(unnestStage, "unnestStage");
        return append(unnestStage);
    }

    public final Pipeline unnest(String arrayField, String alias) {
        Intrinsics.checkNotNullParameter(arrayField, "arrayField");
        Intrinsics.checkNotNullParameter(alias, "alias");
        return unnest(Expression.INSTANCE.field(arrayField).alias(alias));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Pipeline where(BooleanExpression condition) {
        Intrinsics.checkNotNullParameter(condition, "condition");
        return append(new WhereStage(condition, null, 2, 0 == true ? 1 : 0));
    }
}
