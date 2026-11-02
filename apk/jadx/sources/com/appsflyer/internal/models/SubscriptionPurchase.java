package com.appsflyer.internal.models;

import android.graphics.Color;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.appsflyer.internal.connector.purcahse.AFPurchaseConnectorA1f;
import com.appsflyer.internal.connector.purcahse.AFPurchaseConnectorA1g;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
import p005kotlin.Metadata;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b%\b\u0086\b\u0018\u0000 W2\u00020\u0001:\u0001WB\u0083\u0001\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u0014\u001a\u00020\u0002\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u0002HÇ\u0003¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u0002HÇ\u0003¢\u0006\u0004\b\u001b\u0010\u001aJ\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u0012HÇ\u0003¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u0002HÇ\u0003¢\u0006\u0004\b\u001e\u0010\u001aJ\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u0015HÇ\u0003¢\u0006\u0004\b\u001f\u0010 J\u0012\u0010!\u001a\u0004\u0018\u00010\u0004HÇ\u0003¢\u0006\u0004\b!\u0010\"J\u0012\u0010#\u001a\u0004\u0018\u00010\u0006HÇ\u0003¢\u0006\u0004\b#\u0010$J\u0010\u0010%\u001a\u00020\u0002HÇ\u0003¢\u0006\u0004\b%\u0010\u001aJ\u0010\u0010&\u001a\u00020\u0002HÇ\u0003¢\u0006\u0004\b&\u0010\u001aJ\u0016\u0010'\u001a\b\u0012\u0004\u0012\u00020\u000b0\nHÇ\u0003¢\u0006\u0004\b'\u0010(J\u0012\u0010)\u001a\u0004\u0018\u00010\u0002HÇ\u0003¢\u0006\u0004\b)\u0010\u001aJ\u0012\u0010*\u001a\u0004\u0018\u00010\u000eHÇ\u0003¢\u0006\u0004\b*\u0010+J\u0010\u0010,\u001a\u00020\u0002HÇ\u0003¢\u0006\u0004\b,\u0010\u001aJ¤\u0001\u0010-\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00022\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u00022\b\b\u0002\u0010\u0011\u001a\u00020\u00022\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00122\b\b\u0002\u0010\u0014\u001a\u00020\u00022\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015HÇ\u0001¢\u0006\u0004\b-\u0010.J\u001a\u00100\u001a\u00020/2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b0\u00101J\u0010\u00103\u001a\u000202HÖ\u0001¢\u0006\u0004\b3\u00104J\u0010\u00105\u001a\u00020\u0002H×\u0001¢\u0006\u0004\b5\u0010\u001aR\u001a\u00106\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\b6\u00107\u001a\u0004\b8\u0010\u001aR\u001c\u00109\u001a\u0004\u0018\u00010\u00048\u0007X\u0087\u0004¢\u0006\f\n\u0004\b9\u0010:\u001a\u0004\b;\u0010\"R\u001c\u0010<\u001a\u0004\u0018\u00010\u00068\u0007X\u0087\u0004¢\u0006\f\n\u0004\b<\u0010=\u001a\u0004\b>\u0010$R\u001a\u0010?\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\b?\u00107\u001a\u0004\b@\u0010\u001aR\u001a\u0010A\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\bA\u00107\u001a\u0004\bB\u0010\u001aR \u0010C\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0007X\u0087\u0004¢\u0006\f\n\u0004\bC\u0010D\u001a\u0004\bE\u0010(R\u001c\u0010F\u001a\u0004\u0018\u00010\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\bF\u00107\u001a\u0004\bG\u0010\u001aR\u001c\u0010H\u001a\u0004\u0018\u00010\u000e8\u0007X\u0087\u0004¢\u0006\f\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010+R\u001a\u0010K\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\bK\u00107\u001a\u0004\bL\u0010\u001aR\u001a\u0010M\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\bM\u00107\u001a\u0004\bN\u0010\u001aR\u001c\u0010O\u001a\u0004\u0018\u00010\u00128\u0007X\u0087\u0004¢\u0006\f\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010\u001dR\u001a\u0010R\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\bR\u00107\u001a\u0004\bS\u0010\u001aR\u001c\u0010T\u001a\u0004\u0018\u00010\u00158\u0007X\u0087\u0004¢\u0006\f\n\u0004\bT\u0010U\u001a\u0004\bV\u0010 "}, d2 = {"Lcom/appsflyer/internal/models/SubscriptionPurchase;", "", "", "p0", "Lcom/appsflyer/internal/models/CanceledStateContext;", "p1", "Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;", "p2", "p3", "p4", "", "Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;", "p5", "p6", "Lcom/appsflyer/internal/models/PausedStateContext;", "p7", "p8", "p9", "Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;", "p10", "p11", "Lcom/appsflyer/internal/models/TestPurchase;", "p12", "<init>", "(Ljava/lang/String;Lcom/appsflyer/internal/models/CanceledStateContext;Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/appsflyer/internal/models/PausedStateContext;Ljava/lang/String;Ljava/lang/String;Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;Ljava/lang/String;Lcom/appsflyer/internal/models/TestPurchase;)V", "component1", "()Ljava/lang/String;", "component10", "component11", "()Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;", "component12", "component13", "()Lcom/appsflyer/internal/models/TestPurchase;", "component2", "()Lcom/appsflyer/internal/models/CanceledStateContext;", "component3", "()Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;", "component4", "component5", "component6", "()Ljava/util/List;", "component7", "component8", "()Lcom/appsflyer/internal/models/PausedStateContext;", "component9", "copy", "(Ljava/lang/String;Lcom/appsflyer/internal/models/CanceledStateContext;Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/appsflyer/internal/models/PausedStateContext;Ljava/lang/String;Ljava/lang/String;Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;Ljava/lang/String;Lcom/appsflyer/internal/models/TestPurchase;)Lcom/appsflyer/internal/models/SubscriptionPurchase;", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "toString", "acknowledgementState", "Ljava/lang/String;", "getAcknowledgementState", "canceledStateContext", "Lcom/appsflyer/internal/models/CanceledStateContext;", "getCanceledStateContext", "externalAccountIdentifiers", "Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;", "getExternalAccountIdentifiers", "kind", "getKind", "latestOrderId", "getLatestOrderId", "lineItems", "Ljava/util/List;", "getLineItems", "linkedPurchaseToken", "getLinkedPurchaseToken", "pausedStateContext", "Lcom/appsflyer/internal/models/PausedStateContext;", "getPausedStateContext", "regionCode", "getRegionCode", "startTime", "getStartTime", "subscribeWithGoogleInfo", "Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;", "getSubscribeWithGoogleInfo", "subscriptionState", "getSubscriptionState", "testPurchase", "Lcom/appsflyer/internal/models/TestPurchase;", "getTestPurchase", "Companion"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class SubscriptionPurchase {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String acknowledgementState;
    private final CanceledStateContext canceledStateContext;
    private final ExternalAccountIdentifiers externalAccountIdentifiers;
    private final String kind;
    private final String latestOrderId;
    private final List<SubscriptionPurchaseLineItem> lineItems;
    private final String linkedPurchaseToken;
    private final PausedStateContext pausedStateContext;
    private final String regionCode;
    private final String startTime;
    private final SubscribeWithGoogleInfo subscribeWithGoogleInfo;
    private final String subscriptionState;
    private final TestPurchase testPurchase;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;", "Lcom/appsflyer/internal/models/Deserialize;", "Lcom/appsflyer/internal/models/SubscriptionPurchase;", "<init>", "()V", "Lorg/json/JSONObject;", "p0", "fromJson", "(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/SubscriptionPurchase;"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion implements Deserialize<SubscriptionPurchase> {
        private static int $10 = 0;
        private static int $11 = 1;
        private static char InAppPurchaseEvent = 46273;
        private static int PurchaseClient = 1;
        private static long getOneTimePurchaseOfferDetails = 566631410124197933L;
        private static char getPackageName = 6970;
        private static char getQuantity = 34449;
        private static int hashCode = 0;
        private static char toJsonMap = 22370;

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private static void a(String str, int i, Object[] objArr) {
            char[] charArray;
            int i2 = 2 % 2;
            Object obj = str;
            if (str != null) {
                charArray = str.toCharArray();
                int i3 = $10 + 105;
                $11 = i3 % 128;
                if (i3 % 2 == 0) {
                    obj = charArray;
                    int i4 = 3 % 3;
                    obj = charArray;
                }
            }
            obj = charArray;
            char[] cArr = (char[]) obj;
            AFPurchaseConnectorA1g aFPurchaseConnectorA1g = new AFPurchaseConnectorA1g();
            aFPurchaseConnectorA1g.getPackageName = i;
            int length = cArr.length;
            long[] jArr = new long[length];
            aFPurchaseConnectorA1g.InAppPurchaseEvent = 0;
            while (aFPurchaseConnectorA1g.InAppPurchaseEvent < cArr.length) {
                int i5 = $10 + 1;
                $11 = i5 % 128;
                int i6 = i5 % 2;
                jArr[aFPurchaseConnectorA1g.InAppPurchaseEvent] = (((long) cArr[aFPurchaseConnectorA1g.InAppPurchaseEvent]) ^ (((long) aFPurchaseConnectorA1g.InAppPurchaseEvent) * ((long) aFPurchaseConnectorA1g.getPackageName))) ^ (getOneTimePurchaseOfferDetails ^ 5319290379872349608L);
                aFPurchaseConnectorA1g.InAppPurchaseEvent++;
            }
            char[] cArr2 = new char[length];
            aFPurchaseConnectorA1g.InAppPurchaseEvent = 0;
            while (aFPurchaseConnectorA1g.InAppPurchaseEvent < cArr.length) {
                cArr2[aFPurchaseConnectorA1g.InAppPurchaseEvent] = (char) jArr[aFPurchaseConnectorA1g.InAppPurchaseEvent];
                aFPurchaseConnectorA1g.InAppPurchaseEvent++;
            }
            objArr[0] = new String(cArr2);
        }

        private static void b(String str, int i, Object[] objArr) {
            int i2 = 2 % 2;
            int i3 = $10 + 21;
            $11 = i3 % 128;
            if (i3 % 2 == 0) {
                Object obj = null;
                obj.hashCode();
                throw null;
            }
            char[] charArray = str != null ? str.toCharArray() : str;
            AFPurchaseConnectorA1f aFPurchaseConnectorA1f = new AFPurchaseConnectorA1f();
            char[] cArr = new char[charArray.length];
            aFPurchaseConnectorA1f.getQuantity = 0;
            char[] cArr2 = new char[2];
            while (aFPurchaseConnectorA1f.getQuantity < charArray.length) {
                cArr2[0] = charArray[aFPurchaseConnectorA1f.getQuantity];
                cArr2[1] = charArray[aFPurchaseConnectorA1f.getQuantity + 1];
                int i4 = 58224;
                for (int i5 = 0; i5 < 16; i5++) {
                    int i6 = $11 + 87;
                    $10 = i6 % 128;
                    int i7 = i6 % 2;
                    char c = cArr2[1];
                    char c2 = cArr2[0];
                    char c3 = (char) (c - (((c2 + i4) ^ ((c2 << 4) + ((char) (((long) toJsonMap) ^ (-177179452616573881L))))) ^ ((c2 >>> 5) + ((char) (((long) getPackageName) ^ (-177179452616573881L))))));
                    cArr2[1] = c3;
                    cArr2[0] = (char) (c2 - (((c3 >>> 5) + ((char) (((long) InAppPurchaseEvent) ^ (-177179452616573881L)))) ^ ((c3 + i4) ^ ((c3 << 4) + ((char) (((long) getQuantity) ^ (-177179452616573881L)))))));
                    i4 -= 40503;
                }
                cArr[aFPurchaseConnectorA1f.getQuantity] = cArr2[0];
                cArr[aFPurchaseConnectorA1f.getQuantity + 1] = cArr2[1];
                aFPurchaseConnectorA1f.getQuantity += 2;
            }
            objArr[0] = new String(cArr, 0, i);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.appsflyer.internal.models.Deserialize
        public final SubscriptionPurchase fromJson(JSONObject p0) {
            int i = 2 % 2;
            Intrinsics.checkNotNullParameter(p0, "");
            Object[] objArr = new Object[1];
            a("뷩\ude9d笉鞳〈䳄\ue946\u05ff꙾", View.getDefaultSize(0, 0) + 25457, objArr);
            JSONArray jSONArray = p0.getJSONArray(((String) objArr[0]).intern());
            Intrinsics.checkNotNullExpressionValue(jSONArray, "");
            List list = SubscriptionPurchaseKt.toList(jSONArray);
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int i2 = hashCode + 85;
                PurchaseClient = i2 % 128;
                int i3 = i2 % 2;
                arrayList.add(SubscriptionPurchaseLineItem.INSTANCE.fromJson((JSONObject) it.next()));
            }
            ArrayList arrayList2 = arrayList;
            Object[] objArr2 = new Object[1];
            b("㩃ऋ틌ﷶꓦ\uf49b蛖ᚍಧᆧ১䚠㰟壀斑哱唩詎\ued0e\uf5d6", 20 - (ViewConfiguration.getScrollDefaultDelay() >> 16), objArr2);
            String strOptString = p0.optString(((String) objArr2[0]).intern());
            Intrinsics.checkNotNullExpressionValue(strOptString, "");
            Object[] objArr3 = new Object[1];
            a("뷦恿\u06dd┷쮌\ue9ee豂닜儎瞂ᗪ㡘\udea4ﴙꎐ䇾摁ફ⤛콰", Color.blue(0) + 56731, objArr3);
            CanceledStateContext canceledStateContext = (CanceledStateContext) SubscriptionPurchaseKt.toObject(p0, ((String) objArr3[0]).intern(), CanceledStateContext.INSTANCE);
            Object[] objArr4 = new Object[1];
            a("뷠\uf7fe⧷揩闻쿤Ƕ민\ueddc⟽姸鏋엔翌뇛\uebe1᷑埓觝쏈痐꿜\ue1aeᮥ䶿螽", 18947 - KeyEvent.getDeadChar(0, 0), objArr4);
            ExternalAccountIdentifiers externalAccountIdentifiers = (ExternalAccountIdentifiers) SubscriptionPurchaseKt.toObject(p0, ((String) objArr4[0]).intern(), ExternalAccountIdentifiers.INSTANCE);
            Object[] objArr5 = new Object[1];
            b("㽐﨑翌\uf0d8", (ViewConfiguration.getWindowTouchSlop() >> 8) + 4, objArr5);
            String strOptString2 = p0.optString(((String) objArr5[0]).intern());
            Intrinsics.checkNotNullExpressionValue(strOptString2, "");
            Object[] objArr6 = new Object[1];
            b("癌\ue851\ued0e\uf5d6沙箧憅ᆯ备\ue05dڕ㧾猽杆", (ViewConfiguration.getScrollDefaultDelay() >> 16) + 13, objArr6);
            String strOptString3 = p0.optString(((String) objArr6[0]).intern());
            Intrinsics.checkNotNullExpressionValue(strOptString3, "");
            Object[] objArr7 = new Object[1];
            b("ⶎ緟큄䷡춵蔐Û目ʯ\ufc7a3䋟矑䈥蚗柭뎊\uf029䰸剁", (ViewConfiguration.getScrollBarSize() >> 8) + 19, objArr7);
            String str = (String) SubscriptionPurchaseKt.getNullable(p0, ((String) objArr7[0]).intern());
            Object[] objArr8 = new Object[1];
            b("\uf41f鈶\uaa38텋춵蔐\u208f梠閮\ud8de攇狼ݑ謢\ued0e\uf5d6ဿ睥", View.resolveSizeAndState(0, 0, 0) + 18, objArr8);
            PausedStateContext pausedStateContext = (PausedStateContext) SubscriptionPurchaseKt.toObject(p0, ((String) objArr8[0]).intern(), PausedStateContext.INSTANCE);
            Object[] objArr9 = new Object[1];
            a("뷷睛⢔\udddd霆䡌綤㛷\ue839鵳", 51898 - TextUtils.lastIndexOf("", '0', 0, 0), objArr9);
            String strOptString4 = p0.optString(((String) objArr9[0]).intern());
            Intrinsics.checkNotNullExpressionValue(strOptString4, "");
            Object[] objArr10 = new Object[1];
            a("뷶⡜难糰\ueb45冰㿢꩓ႈ", 38316 - ((byte) KeyEvent.getModifierMetaStateMask()), objArr10);
            String strOptString5 = p0.optString(((String) objArr10[0]).intern());
            Intrinsics.checkNotNullExpressionValue(strOptString5, "");
            Object[] objArr11 = new Object[1];
            a("뷶僷柩竣৺᳔㏆웖험\ue8edﾪ銼ꆹ뒙䮈広涒\u009eឞ⩉㥧챰\ue370", 60679 - (ViewConfiguration.getFadingEdgeLength() >> 16), objArr11);
            SubscribeWithGoogleInfo subscribeWithGoogleInfo = (SubscribeWithGoogleInfo) SubscriptionPurchaseKt.toObject(p0, ((String) objArr11[0]).intern(), SubscribeWithGoogleInfo.INSTANCE);
            Object[] objArr12 = new Object[1];
            b("\uebc9ｭ茇⿕雿⚫뷪昏\uddb4뗰ݑ謢\u208f梠閮\ud8de쮦\udcce", (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)) + 16, objArr12);
            String strOptString6 = p0.optString(((String) objArr12[0]).intern());
            Intrinsics.checkNotNullExpressionValue(strOptString6, "");
            Object[] objArr13 = new Object[1];
            a("뷱圅格絞ᙁ⮉㲩톥\ueac5￩鄄\uaa37", ExpandableListView.getPackedPositionChild(0L) + 60134, objArr13);
            SubscriptionPurchase subscriptionPurchase = new SubscriptionPurchase(strOptString, canceledStateContext, externalAccountIdentifiers, strOptString2, strOptString3, arrayList2, str, pausedStateContext, strOptString4, strOptString5, subscribeWithGoogleInfo, strOptString6, (TestPurchase) SubscriptionPurchaseKt.toObject(p0, ((String) objArr13[0]).intern(), TestPurchase.INSTANCE));
            int i4 = PurchaseClient + 61;
            hashCode = i4 % 128;
            if (i4 % 2 == 0) {
                return subscriptionPurchase;
            }
            Object obj = null;
            obj.hashCode();
            throw null;
        }

        @Override // com.appsflyer.internal.models.Deserialize
        public final /* bridge */ /* synthetic */ SubscriptionPurchase fromJson(JSONObject jSONObject) {
            int i = 2 % 2;
            int i2 = PurchaseClient + 101;
            hashCode = i2 % 128;
            int i3 = i2 % 2;
            SubscriptionPurchase subscriptionPurchaseFromJson = fromJson(jSONObject);
            int i4 = PurchaseClient + 85;
            hashCode = i4 % 128;
            int i5 = i4 % 2;
            return subscriptionPurchaseFromJson;
        }
    }

    public SubscriptionPurchase(String str, CanceledStateContext canceledStateContext, ExternalAccountIdentifiers externalAccountIdentifiers, String str2, String str3, List<SubscriptionPurchaseLineItem> list, String str4, PausedStateContext pausedStateContext, String str5, String str6, SubscribeWithGoogleInfo subscribeWithGoogleInfo, String str7, TestPurchase testPurchase) {
        Intrinsics.checkNotNullParameter(str, "");
        Intrinsics.checkNotNullParameter(str2, "");
        Intrinsics.checkNotNullParameter(str3, "");
        Intrinsics.checkNotNullParameter(list, "");
        Intrinsics.checkNotNullParameter(str5, "");
        Intrinsics.checkNotNullParameter(str6, "");
        Intrinsics.checkNotNullParameter(str7, "");
        this.acknowledgementState = str;
        this.canceledStateContext = canceledStateContext;
        this.externalAccountIdentifiers = externalAccountIdentifiers;
        this.kind = str2;
        this.latestOrderId = str3;
        this.lineItems = list;
        this.linkedPurchaseToken = str4;
        this.pausedStateContext = pausedStateContext;
        this.regionCode = str5;
        this.startTime = str6;
        this.subscribeWithGoogleInfo = subscribeWithGoogleInfo;
        this.subscriptionState = str7;
        this.testPurchase = testPurchase;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SubscriptionPurchase copy$default(SubscriptionPurchase subscriptionPurchase, String str, CanceledStateContext canceledStateContext, ExternalAccountIdentifiers externalAccountIdentifiers, String str2, String str3, List list, String str4, PausedStateContext pausedStateContext, String str5, String str6, SubscribeWithGoogleInfo subscribeWithGoogleInfo, String str7, TestPurchase testPurchase, int i, Object obj) {
        if ((i & 1) != 0) {
            str = subscriptionPurchase.acknowledgementState;
        }
        return subscriptionPurchase.copy(str, (i & 2) != 0 ? subscriptionPurchase.canceledStateContext : canceledStateContext, (i & 4) != 0 ? subscriptionPurchase.externalAccountIdentifiers : externalAccountIdentifiers, (i & 8) != 0 ? subscriptionPurchase.kind : str2, (i & 16) != 0 ? subscriptionPurchase.latestOrderId : str3, (i & 32) != 0 ? subscriptionPurchase.lineItems : list, (i & 64) != 0 ? subscriptionPurchase.linkedPurchaseToken : str4, (i & 128) != 0 ? subscriptionPurchase.pausedStateContext : pausedStateContext, (i & 256) != 0 ? subscriptionPurchase.regionCode : str5, (i & 512) != 0 ? subscriptionPurchase.startTime : str6, (i & 1024) != 0 ? subscriptionPurchase.subscribeWithGoogleInfo : subscribeWithGoogleInfo, (i & 2048) != 0 ? subscriptionPurchase.subscriptionState : str7, (i & 4096) != 0 ? subscriptionPurchase.testPurchase : testPurchase);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAcknowledgementState() {
        return this.acknowledgementState;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getStartTime() {
        return this.startTime;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final SubscribeWithGoogleInfo getSubscribeWithGoogleInfo() {
        return this.subscribeWithGoogleInfo;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getSubscriptionState() {
        return this.subscriptionState;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final TestPurchase getTestPurchase() {
        return this.testPurchase;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final CanceledStateContext getCanceledStateContext() {
        return this.canceledStateContext;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final ExternalAccountIdentifiers getExternalAccountIdentifiers() {
        return this.externalAccountIdentifiers;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getKind() {
        return this.kind;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getLatestOrderId() {
        return this.latestOrderId;
    }

    public final List<SubscriptionPurchaseLineItem> component6() {
        return this.lineItems;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getLinkedPurchaseToken() {
        return this.linkedPurchaseToken;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final PausedStateContext getPausedStateContext() {
        return this.pausedStateContext;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getRegionCode() {
        return this.regionCode;
    }

    public final SubscriptionPurchase copy(String p0, CanceledStateContext p1, ExternalAccountIdentifiers p2, String p3, String p4, List<SubscriptionPurchaseLineItem> p5, String p6, PausedStateContext p7, String p8, String p9, SubscribeWithGoogleInfo p10, String p11, TestPurchase p12) {
        Intrinsics.checkNotNullParameter(p0, "");
        Intrinsics.checkNotNullParameter(p3, "");
        Intrinsics.checkNotNullParameter(p4, "");
        Intrinsics.checkNotNullParameter(p5, "");
        Intrinsics.checkNotNullParameter(p8, "");
        Intrinsics.checkNotNullParameter(p9, "");
        Intrinsics.checkNotNullParameter(p11, "");
        return new SubscriptionPurchase(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12);
    }

    public final boolean equals(Object p0) {
        if (this == p0) {
            return true;
        }
        if (!(p0 instanceof SubscriptionPurchase)) {
            return false;
        }
        SubscriptionPurchase subscriptionPurchase = (SubscriptionPurchase) p0;
        return Intrinsics.areEqual(this.acknowledgementState, subscriptionPurchase.acknowledgementState) && Intrinsics.areEqual(this.canceledStateContext, subscriptionPurchase.canceledStateContext) && Intrinsics.areEqual(this.externalAccountIdentifiers, subscriptionPurchase.externalAccountIdentifiers) && Intrinsics.areEqual(this.kind, subscriptionPurchase.kind) && Intrinsics.areEqual(this.latestOrderId, subscriptionPurchase.latestOrderId) && Intrinsics.areEqual(this.lineItems, subscriptionPurchase.lineItems) && Intrinsics.areEqual(this.linkedPurchaseToken, subscriptionPurchase.linkedPurchaseToken) && Intrinsics.areEqual(this.pausedStateContext, subscriptionPurchase.pausedStateContext) && Intrinsics.areEqual(this.regionCode, subscriptionPurchase.regionCode) && Intrinsics.areEqual(this.startTime, subscriptionPurchase.startTime) && Intrinsics.areEqual(this.subscribeWithGoogleInfo, subscriptionPurchase.subscribeWithGoogleInfo) && Intrinsics.areEqual(this.subscriptionState, subscriptionPurchase.subscriptionState) && Intrinsics.areEqual(this.testPurchase, subscriptionPurchase.testPurchase);
    }

    public final String getAcknowledgementState() {
        return this.acknowledgementState;
    }

    public final CanceledStateContext getCanceledStateContext() {
        return this.canceledStateContext;
    }

    public final ExternalAccountIdentifiers getExternalAccountIdentifiers() {
        return this.externalAccountIdentifiers;
    }

    public final String getKind() {
        return this.kind;
    }

    public final String getLatestOrderId() {
        return this.latestOrderId;
    }

    public final List<SubscriptionPurchaseLineItem> getLineItems() {
        return this.lineItems;
    }

    public final String getLinkedPurchaseToken() {
        return this.linkedPurchaseToken;
    }

    public final PausedStateContext getPausedStateContext() {
        return this.pausedStateContext;
    }

    public final String getRegionCode() {
        return this.regionCode;
    }

    public final String getStartTime() {
        return this.startTime;
    }

    public final SubscribeWithGoogleInfo getSubscribeWithGoogleInfo() {
        return this.subscribeWithGoogleInfo;
    }

    public final String getSubscriptionState() {
        return this.subscriptionState;
    }

    public final TestPurchase getTestPurchase() {
        return this.testPurchase;
    }

    public final int hashCode() {
        int iHashCode = this.acknowledgementState.hashCode() * 31;
        CanceledStateContext canceledStateContext = this.canceledStateContext;
        int iHashCode2 = (iHashCode + (canceledStateContext == null ? 0 : canceledStateContext.hashCode())) * 31;
        ExternalAccountIdentifiers externalAccountIdentifiers = this.externalAccountIdentifiers;
        int iHashCode3 = (((((((iHashCode2 + (externalAccountIdentifiers == null ? 0 : externalAccountIdentifiers.hashCode())) * 31) + this.kind.hashCode()) * 31) + this.latestOrderId.hashCode()) * 31) + this.lineItems.hashCode()) * 31;
        String str = this.linkedPurchaseToken;
        int iHashCode4 = (iHashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        PausedStateContext pausedStateContext = this.pausedStateContext;
        int iHashCode5 = (((((iHashCode4 + (pausedStateContext == null ? 0 : pausedStateContext.hashCode())) * 31) + this.regionCode.hashCode()) * 31) + this.startTime.hashCode()) * 31;
        SubscribeWithGoogleInfo subscribeWithGoogleInfo = this.subscribeWithGoogleInfo;
        int iHashCode6 = (((iHashCode5 + (subscribeWithGoogleInfo == null ? 0 : subscribeWithGoogleInfo.hashCode())) * 31) + this.subscriptionState.hashCode()) * 31;
        TestPurchase testPurchase = this.testPurchase;
        return iHashCode6 + (testPurchase != null ? testPurchase.hashCode() : 0);
    }

    public final String toString() {
        return "SubscriptionPurchase(acknowledgementState=" + this.acknowledgementState + ", canceledStateContext=" + this.canceledStateContext + ", externalAccountIdentifiers=" + this.externalAccountIdentifiers + ", kind=" + this.kind + ", latestOrderId=" + this.latestOrderId + ", lineItems=" + this.lineItems + ", linkedPurchaseToken=" + this.linkedPurchaseToken + ", pausedStateContext=" + this.pausedStateContext + ", regionCode=" + this.regionCode + ", startTime=" + this.startTime + ", subscribeWithGoogleInfo=" + this.subscribeWithGoogleInfo + ", subscriptionState=" + this.subscriptionState + ", testPurchase=" + this.testPurchase + ")";
    }
}
