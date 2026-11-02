package kotlin;

import java.io.InputStream;
import kotlin.tw1;

/* JADX INFO: loaded from: classes.dex */
public abstract class h<MessageType extends tw1> implements aj2<MessageType> {
    private static final er0 a = er0.a();

    private MessageType a(MessageType messagetype) throws np1 {
        if (messagetype == null || messagetype.isInitialized()) {
            return messagetype;
        }
        throw b(messagetype).a().a(messagetype);
    }

    private xv3 b(MessageType messagetype) {
        return messagetype instanceof f ? ((f) messagetype).b() : new xv3(messagetype);
    }

    @Override // kotlin.aj2
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public MessageType a(InputStream inputStream, er0 er0Var) throws np1 {
        return (MessageType) a(c(inputStream, er0Var));
    }

    @Override // kotlin.aj2
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public MessageType b(my myVar, er0 er0Var) throws np1 {
        return (MessageType) a(a(myVar, er0Var));
    }

    public MessageType c(InputStream inputStream, er0 er0Var) throws np1 {
        my myVarA = my.a(inputStream);
        MessageType messagetypeA = a(myVarA, er0Var);
        try {
            myVarA.a(0);
            return messagetypeA;
        } catch (np1 e) {
            throw e.a(messagetypeA);
        }
    }
}
