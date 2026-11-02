package com.tapjoy.internal;

import android.content.Context;
import android.graphics.Point;
import android.view.Display;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes5.dex */
public enum z {
    UNSPECIFIED,
    PORTRAIT,
    LANDSCAPE,
    SQUARE,
    NATURAL_PORTRAIT(PORTRAIT),
    RIGHT_LANDSCAPE(LANDSCAPE, NATURAL_PORTRAIT),
    REVERSE_PORTRAIT(PORTRAIT, NATURAL_PORTRAIT),
    LEFT_LANDSCAPE(LANDSCAPE, NATURAL_PORTRAIT),
    NATURAL_LANDSCAPE(LANDSCAPE),
    RIGHT_PORTRAIT(PORTRAIT, NATURAL_LANDSCAPE),
    REVERSE_LANDSCAPE(LANDSCAPE, NATURAL_LANDSCAPE),
    LEFT_PORTRAIT(PORTRAIT, NATURAL_LANDSCAPE),
    NATURAL_SQUARE(SQUARE),
    RIGHT_SQUARE(SQUARE, NATURAL_SQUARE),
    REVERSE_SQUARE(SQUARE, NATURAL_SQUARE),
    LEFT_SQUARE(SQUARE, NATURAL_SQUARE);

    private final z q;
    private final z r;

    z() {
        this.q = this;
        this.r = null;
    }

    z(z zVar) {
        this.q = zVar;
        this.r = this;
    }

    z(z zVar, z zVar2) {
        this.q = zVar;
        this.r = zVar2;
    }

    public static z a(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        int rotation = defaultDisplay.getRotation();
        Point point = new Point();
        defaultDisplay.getSize(point);
        if (point.x < point.y) {
            int i = rotation & 3;
            if (i == 1) {
                return RIGHT_PORTRAIT;
            }
            if (i != 2) {
                return i != 3 ? NATURAL_PORTRAIT : LEFT_PORTRAIT;
            }
            return REVERSE_PORTRAIT;
        }
        if (point.x > point.y) {
            int i2 = rotation & 3;
            if (i2 == 1) {
                return RIGHT_LANDSCAPE;
            }
            if (i2 != 2) {
                return i2 != 3 ? NATURAL_LANDSCAPE : LEFT_LANDSCAPE;
            }
            return REVERSE_LANDSCAPE;
        }
        int i3 = rotation & 3;
        if (i3 == 1) {
            return RIGHT_SQUARE;
        }
        if (i3 != 2) {
            return i3 != 3 ? NATURAL_SQUARE : LEFT_SQUARE;
        }
        return REVERSE_SQUARE;
    }

    public static z b(Context context) {
        int i = context.getResources().getConfiguration().orientation;
        if (i != 1) {
            return i != 2 ? UNSPECIFIED : LANDSCAPE;
        }
        return PORTRAIT;
    }

    public final boolean a() {
        z zVar = PORTRAIT;
        return this == zVar || this.q == zVar;
    }

    public final boolean b() {
        z zVar = LANDSCAPE;
        return this == zVar || this.q == zVar;
    }

    public final int c() {
        if (this.r != null) {
            return ordinal() - this.r.ordinal();
        }
        return 0;
    }
}
