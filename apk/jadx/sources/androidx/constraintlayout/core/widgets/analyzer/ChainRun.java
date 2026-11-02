package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class ChainRun extends WidgetRun {
    private int chainStyle;
    ArrayList<WidgetRun> widgets;

    public ChainRun(ConstraintWidget constraintWidget, int i) {
        super(constraintWidget);
        this.widgets = new ArrayList<>();
        this.orientation = i;
        build();
    }

    private void build() {
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2 = this.widget;
        ConstraintWidget previousChainMember = constraintWidget2.getPreviousChainMember(this.orientation);
        while (true) {
            ConstraintWidget constraintWidget3 = previousChainMember;
            constraintWidget = constraintWidget2;
            constraintWidget2 = constraintWidget3;
            if (constraintWidget2 == null) {
                break;
            } else {
                previousChainMember = constraintWidget2.getPreviousChainMember(this.orientation);
            }
        }
        this.widget = constraintWidget;
        this.widgets.add(constraintWidget.getRun(this.orientation));
        ConstraintWidget nextChainMember = constraintWidget.getNextChainMember(this.orientation);
        while (nextChainMember != null) {
            this.widgets.add(nextChainMember.getRun(this.orientation));
            nextChainMember = nextChainMember.getNextChainMember(this.orientation);
        }
        for (WidgetRun widgetRun : this.widgets) {
            if (this.orientation == 0) {
                widgetRun.widget.horizontalChainRun = this;
            } else if (this.orientation == 1) {
                widgetRun.widget.verticalChainRun = this;
            }
        }
        if (this.orientation == 0 && ((ConstraintWidgetContainer) this.widget.getParent()).isRtl() && this.widgets.size() > 1) {
            ArrayList<WidgetRun> arrayList = this.widgets;
            this.widget = arrayList.get(arrayList.size() - 1).widget;
        }
        this.chainStyle = this.orientation == 0 ? this.widget.getHorizontalChainStyle() : this.widget.getVerticalChainStyle();
    }

    private ConstraintWidget getFirstVisibleWidget() {
        for (int i = 0; i < this.widgets.size(); i++) {
            WidgetRun widgetRun = this.widgets.get(i);
            if (widgetRun.widget.getVisibility() != 8) {
                return widgetRun.widget;
            }
        }
        return null;
    }

    private ConstraintWidget getLastVisibleWidget() {
        for (int size = this.widgets.size() - 1; size >= 0; size--) {
            WidgetRun widgetRun = this.widgets.get(size);
            if (widgetRun.widget.getVisibility() != 8) {
                return widgetRun.widget;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void apply() {
        Iterator<WidgetRun> it = this.widgets.iterator();
        while (it.hasNext()) {
            it.next().apply();
        }
        int size = this.widgets.size();
        if (size < 1) {
            return;
        }
        ConstraintWidget constraintWidget = this.widgets.get(0).widget;
        ConstraintWidget constraintWidget2 = this.widgets.get(size - 1).widget;
        if (this.orientation == 0) {
            ConstraintAnchor constraintAnchor = constraintWidget.mLeft;
            ConstraintAnchor constraintAnchor2 = constraintWidget2.mRight;
            DependencyNode target = getTarget(constraintAnchor, 0);
            int margin = constraintAnchor.getMargin();
            ConstraintWidget firstVisibleWidget = getFirstVisibleWidget();
            if (firstVisibleWidget != null) {
                margin = firstVisibleWidget.mLeft.getMargin();
            }
            if (target != null) {
                addTarget(this.start, target, margin);
            }
            DependencyNode target2 = getTarget(constraintAnchor2, 0);
            int margin2 = constraintAnchor2.getMargin();
            ConstraintWidget lastVisibleWidget = getLastVisibleWidget();
            if (lastVisibleWidget != null) {
                margin2 = lastVisibleWidget.mRight.getMargin();
            }
            if (target2 != null) {
                addTarget(this.end, target2, -margin2);
            }
        } else {
            ConstraintAnchor constraintAnchor3 = constraintWidget.mTop;
            ConstraintAnchor constraintAnchor4 = constraintWidget2.mBottom;
            DependencyNode target3 = getTarget(constraintAnchor3, 1);
            int margin3 = constraintAnchor3.getMargin();
            ConstraintWidget firstVisibleWidget2 = getFirstVisibleWidget();
            if (firstVisibleWidget2 != null) {
                margin3 = firstVisibleWidget2.mTop.getMargin();
            }
            if (target3 != null) {
                addTarget(this.start, target3, margin3);
            }
            DependencyNode target4 = getTarget(constraintAnchor4, 1);
            int margin4 = constraintAnchor4.getMargin();
            ConstraintWidget lastVisibleWidget2 = getLastVisibleWidget();
            if (lastVisibleWidget2 != null) {
                margin4 = lastVisibleWidget2.mBottom.getMargin();
            }
            if (target4 != null) {
                addTarget(this.end, target4, -margin4);
            }
        }
        this.start.updateDelegate = this;
        this.end.updateDelegate = this;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        for (int i = 0; i < this.widgets.size(); i++) {
            this.widgets.get(i).applyToWidget();
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void clear() {
        this.runGroup = null;
        Iterator<WidgetRun> it = this.widgets.iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public long getWrapDimension() {
        int size = this.widgets.size();
        long wrapDimension = 0;
        for (int i = 0; i < size; i++) {
            WidgetRun widgetRun = this.widgets.get(i);
            wrapDimension = wrapDimension + ((long) widgetRun.start.margin) + widgetRun.getWrapDimension() + ((long) widgetRun.end.margin);
        }
        return wrapDimension;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void reset() {
        this.start.resolved = false;
        this.end.resolved = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    boolean supportsWrapComputation() {
        int size = this.widgets.size();
        for (int i = 0; i < size; i++) {
            if (!this.widgets.get(i).supportsWrapComputation()) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ChainRun ");
        sb.append(this.orientation == 0 ? "horizontal : " : "vertical : ");
        for (WidgetRun widgetRun : this.widgets) {
            sb.append("<");
            sb.append(widgetRun);
            sb.append("> ");
        }
        return sb.toString();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
        int i;
        int i2;
        float f;
        float f2;
        int i3;
        int i4;
        int i5;
        boolean z;
        int i6;
        float f3;
        int i7;
        int i8;
        int i9;
        int i10;
        if (this.start.resolved && this.end.resolved) {
            ConstraintWidget parent = this.widget.getParent();
            boolean zIsRtl = parent instanceof ConstraintWidgetContainer ? ((ConstraintWidgetContainer) parent).isRtl() : false;
            int i11 = this.end.value - this.start.value;
            int size = this.widgets.size();
            int i12 = 0;
            while (true) {
                i = -1;
                i2 = 8;
                if (i12 >= size) {
                    i12 = -1;
                    break;
                } else if (this.widgets.get(i12).widget.getVisibility() != 8) {
                    break;
                } else {
                    i12++;
                }
            }
            int i13 = size - 1;
            for (int i14 = i13; i14 >= 0; i14--) {
                if (this.widgets.get(i14).widget.getVisibility() != 8) {
                    i = i14;
                    break;
                }
            }
            int i15 = 0;
            while (true) {
                if (i15 >= 2) {
                    f = 0.0f;
                    f2 = 0.0f;
                    i3 = 0;
                    i4 = 0;
                    i5 = 0;
                    break;
                }
                int i16 = 0;
                i4 = 0;
                i5 = 0;
                int i17 = 0;
                f2 = 0.0f;
                while (i16 < size) {
                    WidgetRun widgetRun = this.widgets.get(i16);
                    if (widgetRun.widget.getVisibility() != i2) {
                        i17++;
                        if (i16 > 0 && i16 >= i12) {
                            i4 += widgetRun.start.margin;
                        }
                        int i18 = widgetRun.dimension.value;
                        boolean z2 = widgetRun.dimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                        if (!z2) {
                            if (widgetRun.matchConstraintsType == 1 && i15 == 0) {
                                i18 = widgetRun.dimension.wrapValue;
                                i5++;
                            } else if (widgetRun.dimension.resolved) {
                            }
                            z2 = true;
                        } else {
                            if (this.orientation == 0 && !widgetRun.widget.horizontalRun.dimension.resolved) {
                                return;
                            }
                            if (this.orientation == 1 && !widgetRun.widget.verticalRun.dimension.resolved) {
                                return;
                            }
                        }
                        if (z2) {
                            i4 += i18;
                        } else {
                            i5++;
                            float f4 = widgetRun.widget.mWeight[this.orientation];
                            if (f4 >= 0.0f) {
                                f2 += f4;
                            }
                        }
                        if (i16 < i13 && i16 < i) {
                            i4 += -widgetRun.end.margin;
                        }
                    }
                    i16++;
                    i2 = 8;
                }
                f = 0.0f;
                if (i4 < i11 || i5 == 0) {
                    i3 = i17;
                    break;
                } else {
                    i15++;
                    i2 = 8;
                }
            }
            int i19 = this.start.value;
            if (zIsRtl) {
                i19 = this.end.value;
            }
            float f5 = 0.5f;
            if (i4 > i11) {
                i19 = zIsRtl ? i19 + ((int) (((i4 - i11) / 2.0f) + 0.5f)) : i19 - ((int) (((i4 - i11) / 2.0f) + 0.5f));
            }
            if (i5 > 0) {
                float f6 = i11 - i4;
                int i20 = (int) ((f6 / i5) + 0.5f);
                int i21 = 0;
                int i22 = 0;
                while (i21 < size) {
                    float f7 = f5;
                    WidgetRun widgetRun2 = this.widgets.get(i21);
                    boolean z3 = zIsRtl;
                    if (widgetRun2.widget.getVisibility() == 8 || widgetRun2.dimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || widgetRun2.dimension.resolved) {
                        i19 = i19;
                    } else {
                        int i23 = f2 > f ? (int) (((widgetRun2.widget.mWeight[this.orientation] * f6) / f2) + f7) : i20;
                        if (this.orientation == 0) {
                            i9 = widgetRun2.widget.mMatchConstraintMaxWidth;
                            i10 = widgetRun2.widget.mMatchConstraintMinWidth;
                        } else {
                            i9 = widgetRun2.widget.mMatchConstraintMaxHeight;
                            i10 = widgetRun2.widget.mMatchConstraintMinHeight;
                        }
                        int iMax = Math.max(i10, widgetRun2.matchConstraintsType == 1 ? Math.min(i23, widgetRun2.dimension.wrapValue) : i23);
                        if (i9 > 0) {
                            iMax = Math.min(i9, iMax);
                        }
                        if (iMax != i23) {
                            i22++;
                            i23 = iMax;
                        }
                        widgetRun2.dimension.resolve(i23);
                    }
                    i21++;
                    f5 = f7;
                    zIsRtl = z3;
                    i19 = i19;
                    f6 = f6;
                    i20 = i20;
                }
                z = zIsRtl;
                i6 = i19;
                f3 = f5;
                if (i22 > 0) {
                    i5 -= i22;
                    int i24 = 0;
                    for (int i25 = 0; i25 < size; i25++) {
                        WidgetRun widgetRun3 = this.widgets.get(i25);
                        if (widgetRun3.widget.getVisibility() != 8) {
                            if (i25 > 0 && i25 >= i12) {
                                i24 += widgetRun3.start.margin;
                            }
                            i24 += widgetRun3.dimension.value;
                            if (i25 < i13 && i25 < i) {
                                i24 += -widgetRun3.end.margin;
                            }
                        }
                    }
                    i4 = i24;
                }
                i8 = 2;
                if (this.chainStyle == 2 && i22 == 0) {
                    i7 = 0;
                    this.chainStyle = 0;
                } else {
                    i7 = 0;
                }
            } else {
                z = zIsRtl;
                i6 = i19;
                f3 = 0.5f;
                i7 = 0;
                i8 = 2;
            }
            if (i4 > i11) {
                this.chainStyle = i8;
            }
            if (i3 > 0 && i5 == 0 && i12 == i) {
                this.chainStyle = i8;
            }
            int i26 = this.chainStyle;
            if (i26 == 1) {
                int i27 = i3 > 1 ? (i11 - i4) / (i3 - 1) : i3 == 1 ? (i11 - i4) / 2 : i7;
                if (i5 > 0) {
                    i27 = i7;
                }
                int i28 = i6;
                for (int i29 = i7; i29 < size; i29++) {
                    WidgetRun widgetRun4 = this.widgets.get(z ? size - (i29 + 1) : i29);
                    if (widgetRun4.widget.getVisibility() == 8) {
                        widgetRun4.start.resolve(i28);
                        widgetRun4.end.resolve(i28);
                    } else {
                        if (i29 > 0) {
                            i28 = z ? i28 - i27 : i28 + i27;
                        }
                        if (i29 > 0 && i29 >= i12) {
                            i28 = z ? i28 - widgetRun4.start.margin : i28 + widgetRun4.start.margin;
                        }
                        if (z) {
                            widgetRun4.end.resolve(i28);
                        } else {
                            widgetRun4.start.resolve(i28);
                        }
                        int i30 = widgetRun4.dimension.value;
                        if (widgetRun4.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun4.matchConstraintsType == 1) {
                            i30 = widgetRun4.dimension.wrapValue;
                        }
                        i28 = z ? i28 - i30 : i28 + i30;
                        if (z) {
                            widgetRun4.start.resolve(i28);
                        } else {
                            widgetRun4.end.resolve(i28);
                        }
                        widgetRun4.resolved = true;
                        if (i29 < i13 && i29 < i) {
                            i28 = z ? i28 - (-widgetRun4.end.margin) : i28 + (-widgetRun4.end.margin);
                        }
                    }
                }
                return;
            }
            if (i26 == 0) {
                int i31 = (i11 - i4) / (i3 + 1);
                if (i5 > 0) {
                    i31 = i7;
                }
                int i32 = i6;
                for (int i33 = i7; i33 < size; i33++) {
                    WidgetRun widgetRun5 = this.widgets.get(z ? size - (i33 + 1) : i33);
                    if (widgetRun5.widget.getVisibility() == 8) {
                        widgetRun5.start.resolve(i32);
                        widgetRun5.end.resolve(i32);
                    } else {
                        int i34 = z ? i32 - i31 : i32 + i31;
                        if (i33 > 0 && i33 >= i12) {
                            i34 = z ? i34 - widgetRun5.start.margin : i34 + widgetRun5.start.margin;
                        }
                        if (z) {
                            widgetRun5.end.resolve(i34);
                        } else {
                            widgetRun5.start.resolve(i34);
                        }
                        int iMin = widgetRun5.dimension.value;
                        if (widgetRun5.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun5.matchConstraintsType == 1) {
                            iMin = Math.min(iMin, widgetRun5.dimension.wrapValue);
                        }
                        i32 = z ? i34 - iMin : i34 + iMin;
                        if (z) {
                            widgetRun5.start.resolve(i32);
                        } else {
                            widgetRun5.end.resolve(i32);
                        }
                        if (i33 < i13 && i33 < i) {
                            i32 = z ? i32 - (-widgetRun5.end.margin) : i32 + (-widgetRun5.end.margin);
                        }
                    }
                }
                return;
            }
            if (i26 == 2) {
                float horizontalBiasPercent = this.orientation == 0 ? this.widget.getHorizontalBiasPercent() : this.widget.getVerticalBiasPercent();
                if (z) {
                    horizontalBiasPercent = 1.0f - horizontalBiasPercent;
                }
                int i35 = (int) (((i11 - i4) * horizontalBiasPercent) + f3);
                if (i35 < 0 || i5 > 0) {
                    i35 = i7;
                }
                int i36 = z ? i6 - i35 : i6 + i35;
                for (int i37 = i7; i37 < size; i37++) {
                    WidgetRun widgetRun6 = this.widgets.get(z ? size - (i37 + 1) : i37);
                    if (widgetRun6.widget.getVisibility() == 8) {
                        widgetRun6.start.resolve(i36);
                        widgetRun6.end.resolve(i36);
                    } else {
                        if (i37 > 0 && i37 >= i12) {
                            i36 = z ? i36 - widgetRun6.start.margin : i36 + widgetRun6.start.margin;
                        }
                        if (z) {
                            widgetRun6.end.resolve(i36);
                        } else {
                            widgetRun6.start.resolve(i36);
                        }
                        int i38 = widgetRun6.dimension.value;
                        if (widgetRun6.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun6.matchConstraintsType == 1) {
                            i38 = widgetRun6.dimension.wrapValue;
                        }
                        i36 = z ? i36 - i38 : i36 + i38;
                        if (z) {
                            widgetRun6.start.resolve(i36);
                        } else {
                            widgetRun6.end.resolve(i36);
                        }
                        if (i37 < i13 && i37 < i) {
                            i36 = z ? i36 - (-widgetRun6.end.margin) : i36 + (-widgetRun6.end.margin);
                        }
                    }
                }
            }
        }
    }
}
