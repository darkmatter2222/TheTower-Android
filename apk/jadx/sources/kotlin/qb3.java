package kotlin;

import p005kotlin.text.Typography;

/* JADX INFO: loaded from: classes.dex */
public enum qb3 implements yh1.a {
    /* JADX INFO: Fake field, exist only in values array */
    VIDEO_AUTO_PLAY_START_TIME_UNKNOWN(0),
    /* JADX INFO: Fake field, exist only in values array */
    VIDEO_AUTO_PLAY_START_TIME_ONE_PIXEL(1),
    VIDEO_AUTO_PLAY_START_TIME_AD_SETTLED(2),
    UNRECOGNIZED(-1);

    public final int a;

    qb3(int i) {
        this.a = i;
    }

    @Override // ads_mobile_sdk.yh1.a
    public final int getNumber() {
        return this == UNRECOGNIZED ? yh1.a() : this.a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sf.a(qb3.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
        if (this != UNRECOGNIZED) {
            sb.append(" number=").append(getNumber());
        }
        return sb.append(" name=").append(name()).append(Typography.greater).toString();
    }
}
