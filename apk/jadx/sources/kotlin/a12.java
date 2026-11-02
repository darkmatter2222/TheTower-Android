package kotlin;

import com.google.gson.JsonObject;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class a12 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ g12 b;
    public final /* synthetic */ JsonObject c;
    public final /* synthetic */ s02 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a12(s02 s02Var, g12 g12Var, JsonObject jsonObject, Continuation continuation) {
        super(2, continuation);
        this.b = g12Var;
        this.c = jsonObject;
        this.d = s02Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new a12(this.d, this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((a12) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0094  */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objAsync$default;
        JsonObject json;
        cg2 mediaType;
        boolean z;
        cg2 cg2Var;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            v42 v42Var = this.b.c;
            JsonObject jsonObject = this.c;
            this.a = 1;
            v42Var.getClass();
            ds1 ds1Var = ds1.a;
            if (ds1.a(jsonObject, "enable_omid", false) && (json = ds1.a(jsonObject, "omid_settings", (JsonObject) null)) != null) {
                Intrinsics.checkNotNullParameter(json, "json");
                int iA = ds1.a(json, "media_type", -1);
                if (iA != 0) {
                    mediaType = iA != 1 ? cg2.UNKNOWN : cg2.VIDEO;
                } else {
                    mediaType = cg2.DISPLAY;
                }
                xh2 videoEventsOwner = bg2.a[mediaType.ordinal()] == 1 ? xh2.d : xh2.c;
                ds1.a(json, "javascript_session_service_enabled", true);
                String omidPartnerName = ds1.a(json, "omid_partner_name", "");
                String omidHtml = ds1.a(json, "omid_html", "");
                Intrinsics.checkNotNullParameter(mediaType, "mediaType");
                Intrinsics.checkNotNullParameter(videoEventsOwner, "videoEventsOwner");
                Intrinsics.checkNotNullParameter(omidPartnerName, "omidPartnerName");
                Intrinsics.checkNotNullParameter(omidHtml, "omidHtml");
                if (omidHtml.length() == 0) {
                    objAsync$default = null;
                } else {
                    CoroutineScope coroutineScope = v42Var.f;
                    u42 block = new u42(v42Var, omidHtml, null);
                    EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                    Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                    Intrinsics.checkNotNullParameter(context, "context");
                    Intrinsics.checkNotNullParameter(block, "block");
                    objAsync$default = BuildersKt__Builders_commonKt.async$default(coroutineScope, context, null, new vs3(block, null), 2, null);
                }
            } else {
                objAsync$default = null;
            }
            if (objAsync$default == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
            objAsync$default = obj;
        }
        Deferred deferred = (Deferred) objAsync$default;
        if (deferred != null) {
            this.d.o = deferred;
        }
        ds1 ds1Var2 = ds1.a;
        JsonObject json2 = ds1.a(this.c, "omid_settings", (JsonObject) null);
        if (json2 != null) {
            s02 s02Var = this.d;
            Intrinsics.checkNotNullParameter(json2, "json");
            int iA2 = ds1.a(json2, "media_type", -1);
            if (iA2 != 0) {
                z = true;
                cg2Var = iA2 != 1 ? cg2.UNKNOWN : cg2.VIDEO;
            } else {
                z = true;
                cg2Var = cg2.DISPLAY;
            }
            cg2 cg2Var2 = cg2Var;
            s02Var.n = new dg2(cg2Var2, bg2.a[cg2Var2.ordinal()] == z ? xh2.d : xh2.c, ds1.a(json2, "javascript_session_service_enabled", z), ds1.a(json2, "omid_partner_name", ""), ds1.a(json2, "omid_html", ""));
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
