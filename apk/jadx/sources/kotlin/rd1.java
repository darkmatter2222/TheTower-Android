package kotlin;

import com.google.android.libraries.ads.mobile.sdk.initialization.AdapterStatus;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.AdapterVersionData;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.util.Map;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class rd1 {
    public final hf a;
    public final ur3 b;

    public rd1(hf adapterInitializer, ur3 traceLogger) {
        Intrinsics.checkNotNullParameter(adapterInitializer, "adapterInitializer");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        this.a = adapterInitializer;
        this.b = traceLogger;
        MutexKt.Mutex(false);
    }

    public static JsonObject a(String str, AdapterStatus adapterStatus, AdapterVersionData adapterVersionData) {
        String str2;
        String str3;
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("adapterClassName", str);
        String str4 = "";
        if (adapterVersionData == null || (str2 = adapterVersionData.adapterVersion) == null) {
            str2 = "";
        }
        jsonObject.addProperty("version", str2);
        if (adapterVersionData != null && (str3 = adapterVersionData.sdkVersion) != null) {
            str4 = str3;
        }
        jsonObject.addProperty("sdkVersion", str4);
        jsonObject.addProperty("status", Integer.valueOf(adapterStatus.getInitializationState() == AdapterStatus.InitializationState.COMPLETE ? 1 : 0));
        jsonObject.addProperty("description", adapterStatus.getDescription());
        jsonObject.addProperty("initializationLatencyMillis", Integer.valueOf(adapterStatus.getLatency()));
        jsonObject.addProperty("supportsInitialization", Boolean.valueOf(adapterVersionData != null));
        return jsonObject;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object a(rd1 rd1Var, Continuation continuation) {
        qd1 qd1Var;
        JsonArray jsonArray;
        Object objA;
        if (continuation instanceof qd1) {
            qd1Var = (qd1) continuation;
            int i = qd1Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                qd1Var.e = i - Integer.MIN_VALUE;
            } else {
                qd1Var = new qd1(rd1Var, continuation);
            }
        } else {
            qd1Var = new qd1(rd1Var, continuation);
        }
        Object obj = qd1Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = qd1Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            jsonArray = new JsonArray();
            hf hfVar = rd1Var.a;
            qd1Var.a = rd1Var;
            qd1Var.b = jsonArray;
            qd1Var.e = 1;
            hfVar.getClass();
            objA = hf.a(hfVar, qd1Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            JsonArray jsonArray2 = qd1Var.b;
            rd1 rd1Var2 = qd1Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            jsonArray = jsonArray2;
            rd1Var = rd1Var2;
            objA = obj;
        }
        for (Map.Entry entry : ((Map) objA).entrySet()) {
            String str = (String) entry.getKey();
            yd ydVar = (yd) entry.getValue();
            try {
                AdapterStatus adapterStatus = ydVar.a;
                AdapterVersionData adapterVersionData = ydVar.b;
                rd1Var.getClass();
                jsonArray.add(a(str, adapterStatus, adapterVersionData));
            } catch (Exception e) {
                ((as3) rd1Var.b).a("InspectorAdapterInfo.updateAdapters", (Throwable) e);
            }
        }
        return jsonArray;
    }
}
