package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.appcompat.R;
import androidx.core.view.GravityCompat;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import com.ironsource.InterfaceC3669k1;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public class LinearLayoutCompat extends ViewGroup {
    private static final String ACCESSIBILITY_CLASS_NAME = "androidx.appcompat.widget.LinearLayoutCompat";
    public static final int HORIZONTAL = 0;
    private static final int INDEX_BOTTOM = 2;
    private static final int INDEX_CENTER_VERTICAL = 0;
    private static final int INDEX_FILL = 3;
    private static final int INDEX_TOP = 1;
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    public static final int VERTICAL = 1;
    private static final int VERTICAL_GRAVITY_COUNT = 4;
    private boolean mBaselineAligned;
    private int mBaselineAlignedChildIndex;
    private int mBaselineChildTop;
    private Drawable mDivider;
    private int mDividerHeight;
    private int mDividerPadding;
    private int mDividerWidth;
    private int mGravity;
    private int[] mMaxAscent;
    private int[] mMaxDescent;
    private int mOrientation;
    private int mShowDividers;
    private int mTotalLength;
    private boolean mUseLargestChild;
    private float mWeightSum;

    @Retention(RetentionPolicy.SOURCE)
    public @interface DividerMode {
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public int gravity;
        public float weight;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.gravity = -1;
            this.weight = 0.0f;
        }

        public LayoutParams(int i, int i2, float f) {
            super(i, i2);
            this.gravity = -1;
            this.weight = f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.LinearLayoutCompat_Layout);
            this.weight = typedArrayObtainStyledAttributes.getFloat(R.styleable.LinearLayoutCompat_Layout_android_layout_weight, 0.0f);
            this.gravity = typedArrayObtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_Layout_android_layout_gravity, -1);
            typedArrayObtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = -1;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.gravity = -1;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.gravity = -1;
            this.weight = layoutParams.weight;
            this.gravity = layoutParams.gravity;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface OrientationMode {
    }

    public LinearLayoutCompat(Context context) {
        this(context, null);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mBaselineAligned = true;
        this.mBaselineAlignedChildIndex = -1;
        this.mBaselineChildTop = 0;
        this.mGravity = 8388659;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.LinearLayoutCompat, i, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, R.styleable.LinearLayoutCompat, attributeSet, tintTypedArrayObtainStyledAttributes.getWrappedTypeArray(), i, 0);
        int i2 = tintTypedArrayObtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_orientation, -1);
        if (i2 >= 0) {
            setOrientation(i2);
        }
        int i3 = tintTypedArrayObtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_gravity, -1);
        if (i3 >= 0) {
            setGravity(i3);
        }
        boolean z = tintTypedArrayObtainStyledAttributes.getBoolean(R.styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!z) {
            setBaselineAligned(z);
        }
        this.mWeightSum = tintTypedArrayObtainStyledAttributes.getFloat(R.styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.mBaselineAlignedChildIndex = tintTypedArrayObtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.mUseLargestChild = tintTypedArrayObtainStyledAttributes.getBoolean(R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.LinearLayoutCompat_divider));
        this.mShowDividers = tintTypedArrayObtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_showDividers, 0);
        this.mDividerPadding = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.LinearLayoutCompat_dividerPadding, 0);
        tintTypedArrayObtainStyledAttributes.recycle();
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0036  */
    private void forceUniformHeight(int i, int i2) {
        int i3;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        int i4 = 0;
        while (i4 < i) {
            View virtualChildAt = getVirtualChildAt(i4);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (layoutParams.height == -1) {
                    int i5 = layoutParams.width;
                    layoutParams.width = virtualChildAt.getMeasuredWidth();
                    i3 = i2;
                    measureChildWithMargins(virtualChildAt, i3, 0, iMakeMeasureSpec, 0);
                    layoutParams.width = i5;
                } else {
                    i3 = i2;
                }
            } else {
                i3 = i2;
            }
            i4++;
            i2 = i3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0036  */
    private void forceUniformWidth(int i, int i2) {
        int i3;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        int i4 = 0;
        while (i4 < i) {
            View virtualChildAt = getVirtualChildAt(i4);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (layoutParams.width == -1) {
                    int i5 = layoutParams.height;
                    layoutParams.height = virtualChildAt.getMeasuredHeight();
                    i3 = i2;
                    measureChildWithMargins(virtualChildAt, iMakeMeasureSpec, 0, i3, 0);
                    layoutParams.height = i5;
                } else {
                    i3 = i2;
                }
            } else {
                i3 = i2;
            }
            i4++;
            i2 = i3;
        }
    }

    private void setChildFrame(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i3 + i, i4 + i2);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    void drawDividersHorizontal(Canvas canvas) {
        int right;
        int left;
        int i;
        int virtualChildCount = getVirtualChildCount();
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        for (int i2 = 0; i2 < virtualChildCount; i2++) {
            View virtualChildAt = getVirtualChildAt(i2);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i2)) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                drawVerticalDivider(canvas, zIsLayoutRtl ? virtualChildAt.getRight() + layoutParams.rightMargin : (virtualChildAt.getLeft() - layoutParams.leftMargin) - this.mDividerWidth);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 != null) {
                LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                if (zIsLayoutRtl) {
                    left = virtualChildAt2.getLeft() - layoutParams2.leftMargin;
                    i = this.mDividerWidth;
                    right = left - i;
                } else {
                    right = virtualChildAt2.getRight() + layoutParams2.rightMargin;
                }
            } else if (zIsLayoutRtl) {
                right = getPaddingLeft();
            } else {
                left = getWidth() - getPaddingRight();
                i = this.mDividerWidth;
                right = left - i;
            }
            drawVerticalDivider(canvas, right);
        }
    }

    void drawDividersVertical(Canvas canvas) {
        int virtualChildCount = getVirtualChildCount();
        for (int i = 0; i < virtualChildCount; i++) {
            View virtualChildAt = getVirtualChildAt(i);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i)) {
                drawHorizontalDivider(canvas, (virtualChildAt.getTop() - ((LayoutParams) virtualChildAt.getLayoutParams()).topMargin) - this.mDividerHeight);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            drawHorizontalDivider(canvas, virtualChildAt2 == null ? (getHeight() - getPaddingBottom()) - this.mDividerHeight : virtualChildAt2.getBottom() + ((LayoutParams) virtualChildAt2.getLayoutParams()).bottomMargin);
        }
    }

    void drawHorizontalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, i, (getWidth() - getPaddingRight()) - this.mDividerPadding, this.mDividerHeight + i);
        this.mDivider.draw(canvas);
    }

    void drawVerticalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(i, getPaddingTop() + this.mDividerPadding, this.mDividerWidth + i, (getHeight() - getPaddingBottom()) - this.mDividerPadding);
        this.mDivider.draw(canvas);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        int i = this.mOrientation;
        if (i == 0) {
            return new LayoutParams(-2, -2);
        }
        if (i == 1) {
            return new LayoutParams(-1, -2);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.View
    public int getBaseline() {
        int i;
        if (this.mBaselineAlignedChildIndex < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i2 = this.mBaselineAlignedChildIndex;
        if (childCount <= i2) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i2);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.mBaselineAlignedChildIndex == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int bottom = this.mBaselineChildTop;
        if (this.mOrientation == 1 && (i = this.mGravity & InterfaceC3669k1.d.b.j) != 48) {
            if (i == 16) {
                bottom += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.mTotalLength) / 2;
            } else if (i == 80) {
                bottom = ((getBottom() - getTop()) - getPaddingBottom()) - this.mTotalLength;
            }
        }
        return bottom + ((LayoutParams) childAt.getLayoutParams()).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.mBaselineAlignedChildIndex;
    }

    int getChildrenSkipCount(View view, int i) {
        return 0;
    }

    public Drawable getDividerDrawable() {
        return this.mDivider;
    }

    public int getDividerPadding() {
        return this.mDividerPadding;
    }

    public int getDividerWidth() {
        return this.mDividerWidth;
    }

    public int getGravity() {
        return this.mGravity;
    }

    int getLocationOffset(View view) {
        return 0;
    }

    int getNextLocationOffset(View view) {
        return 0;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public int getShowDividers() {
        return this.mShowDividers;
    }

    View getVirtualChildAt(int i) {
        return getChildAt(i);
    }

    int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.mWeightSum;
    }

    protected boolean hasDividerBeforeChildAt(int i) {
        if (i == 0) {
            return (this.mShowDividers & 1) != 0;
        }
        if (i == getChildCount()) {
            return (this.mShowDividers & 4) != 0;
        }
        if ((this.mShowDividers & 2) != 0) {
            for (int i2 = i - 1; i2 >= 0; i2--) {
                if (getChildAt(i2).getVisibility() != 8) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean isBaselineAligned() {
        return this.mBaselineAligned;
    }

    public boolean isMeasureWithLargestChildEnabled() {
        return this.mUseLargestChild;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:32:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:34:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:36:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:37:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:39:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:40:0x00de  */
    /* JADX WARN: Code duplicated, block: B:42:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:43:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:48:0x0104  */
    void layoutHorizontal(int i, int i2, int i3, int i4) {
        int paddingLeft;
        int i5;
        int i6;
        char c;
        char c2;
        int i7;
        int childrenSkipCount;
        int i8;
        int baseline;
        int i9;
        int i10;
        int i11;
        int measuredHeight;
        int i12;
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        int paddingTop = getPaddingTop();
        int i13 = i4 - i2;
        int paddingBottom = i13 - getPaddingBottom();
        int paddingBottom2 = (i13 - paddingTop) - getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        int i14 = this.mGravity;
        int i15 = i14 & InterfaceC3669k1.d.b.j;
        boolean z = this.mBaselineAligned;
        int[] iArr = this.mMaxAscent;
        int[] iArr2 = this.mMaxDescent;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(8388615 & i14, ViewCompat.getLayoutDirection(this));
        char c3 = 2;
        char c4 = 1;
        if (absoluteGravity != 1) {
            paddingLeft = absoluteGravity != 5 ? getPaddingLeft() : ((getPaddingLeft() + i3) - i) - this.mTotalLength;
        } else {
            paddingLeft = getPaddingLeft() + (((i3 - i) - this.mTotalLength) / 2);
        }
        if (zIsLayoutRtl) {
            i5 = virtualChildCount - 1;
            i6 = -1;
        } else {
            i5 = 0;
            i6 = 1;
        }
        int i16 = 0;
        while (i16 < virtualChildCount) {
            int i17 = i5 + (i6 * i16);
            int i18 = i16;
            View virtualChildAt = getVirtualChildAt(i17);
            if (virtualChildAt == null) {
                paddingLeft += measureNullChild(i17);
                childrenSkipCount = i18;
                i7 = paddingTop;
                c = c3;
                c2 = c4;
            } else {
                c = c3;
                c2 = c4;
                if (virtualChildAt.getVisibility() != 8) {
                    int measuredWidth = virtualChildAt.getMeasuredWidth();
                    int measuredHeight2 = virtualChildAt.getMeasuredHeight();
                    LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                    int i19 = paddingLeft;
                    if (z) {
                        i8 = measuredHeight2;
                        baseline = layoutParams.height != -1 ? virtualChildAt.getBaseline() : -1;
                        i9 = layoutParams.gravity;
                        if (i9 < 0) {
                            i9 = i15;
                        }
                        i10 = i9 & InterfaceC3669k1.d.b.j;
                        i7 = paddingTop;
                        if (i10 != 16) {
                            if (i10 != 48) {
                                i11 = i7 + layoutParams.topMargin;
                                if (baseline != -1) {
                                    i11 += iArr[c2] - baseline;
                                }
                            } else if (i10 != 80) {
                                i11 = i7;
                            } else {
                                i11 = (paddingBottom - i8) - layoutParams.bottomMargin;
                                if (baseline != -1) {
                                    measuredHeight = iArr2[c] - (virtualChildAt.getMeasuredHeight() - baseline);
                                }
                            }
                            if (hasDividerBeforeChildAt(i17)) {
                                i12 = i19 + this.mDividerWidth;
                            } else {
                                i12 = i19;
                            }
                            int i20 = layoutParams.leftMargin + i12;
                            setChildFrame(virtualChildAt, getLocationOffset(virtualChildAt) + i20, i11, measuredWidth, i8);
                            int nextLocationOffset = i20 + layoutParams.rightMargin + measuredWidth + getNextLocationOffset(virtualChildAt);
                            childrenSkipCount = getChildrenSkipCount(virtualChildAt, i17) + i18;
                            paddingLeft = nextLocationOffset;
                        } else {
                            i11 = i7 + ((paddingBottom2 - i8) / 2) + layoutParams.topMargin;
                            measuredHeight = layoutParams.bottomMargin;
                        }
                        i11 -= measuredHeight;
                        if (hasDividerBeforeChildAt(i17)) {
                            i12 = i19 + this.mDividerWidth;
                        } else {
                            i12 = i19;
                        }
                        int i21 = layoutParams.leftMargin + i12;
                        setChildFrame(virtualChildAt, getLocationOffset(virtualChildAt) + i21, i11, measuredWidth, i8);
                        int nextLocationOffset2 = i21 + layoutParams.rightMargin + measuredWidth + getNextLocationOffset(virtualChildAt);
                        childrenSkipCount = getChildrenSkipCount(virtualChildAt, i17) + i18;
                        paddingLeft = nextLocationOffset2;
                    } else {
                        i8 = measuredHeight2;
                    }
                    i9 = layoutParams.gravity;
                    if (i9 < 0) {
                        i9 = i15;
                    }
                    i10 = i9 & InterfaceC3669k1.d.b.j;
                    i7 = paddingTop;
                    if (i10 != 16) {
                        if (i10 != 48) {
                            i11 = i7 + layoutParams.topMargin;
                            if (baseline != -1) {
                                i11 += iArr[c2] - baseline;
                            }
                        } else if (i10 != 80) {
                            i11 = i7;
                        } else {
                            i11 = (paddingBottom - i8) - layoutParams.bottomMargin;
                            if (baseline != -1) {
                                measuredHeight = iArr2[c] - (virtualChildAt.getMeasuredHeight() - baseline);
                            }
                        }
                        if (hasDividerBeforeChildAt(i17)) {
                            i12 = i19 + this.mDividerWidth;
                        } else {
                            i12 = i19;
                        }
                        int i22 = layoutParams.leftMargin + i12;
                        setChildFrame(virtualChildAt, getLocationOffset(virtualChildAt) + i22, i11, measuredWidth, i8);
                        int nextLocationOffset3 = i22 + layoutParams.rightMargin + measuredWidth + getNextLocationOffset(virtualChildAt);
                        childrenSkipCount = getChildrenSkipCount(virtualChildAt, i17) + i18;
                        paddingLeft = nextLocationOffset3;
                    } else {
                        i11 = i7 + ((paddingBottom2 - i8) / 2) + layoutParams.topMargin;
                        measuredHeight = layoutParams.bottomMargin;
                    }
                    i11 -= measuredHeight;
                    if (hasDividerBeforeChildAt(i17)) {
                        i12 = i19 + this.mDividerWidth;
                    } else {
                        i12 = i19;
                    }
                    int i23 = layoutParams.leftMargin + i12;
                    setChildFrame(virtualChildAt, getLocationOffset(virtualChildAt) + i23, i11, measuredWidth, i8);
                    int nextLocationOffset4 = i23 + layoutParams.rightMargin + measuredWidth + getNextLocationOffset(virtualChildAt);
                    childrenSkipCount = getChildrenSkipCount(virtualChildAt, i17) + i18;
                    paddingLeft = nextLocationOffset4;
                } else {
                    i7 = paddingTop;
                    childrenSkipCount = i18;
                }
            }
            i16 = childrenSkipCount + 1;
            c3 = c;
            c4 = c2;
            paddingTop = i7;
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0097  */
    void layoutVertical(int i, int i2, int i3, int i4) {
        int paddingTop;
        int i5;
        int i6;
        int i7;
        int paddingLeft = getPaddingLeft();
        int i8 = i3 - i;
        int paddingRight = i8 - getPaddingRight();
        int paddingRight2 = (i8 - paddingLeft) - getPaddingRight();
        int virtualChildCount = getVirtualChildCount();
        int i9 = this.mGravity;
        int i10 = i9 & InterfaceC3669k1.d.b.j;
        int i11 = i9 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i10 != 16) {
            paddingTop = i10 != 80 ? getPaddingTop() : ((getPaddingTop() + i4) - i2) - this.mTotalLength;
        } else {
            paddingTop = getPaddingTop() + (((i4 - i2) - this.mTotalLength) / 2);
        }
        int childrenSkipCount = 0;
        while (childrenSkipCount < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(childrenSkipCount);
            if (virtualChildAt == null) {
                paddingTop += measureNullChild(childrenSkipCount);
            } else {
                if (virtualChildAt.getVisibility() != 8) {
                    int measuredWidth = virtualChildAt.getMeasuredWidth();
                    int measuredHeight = virtualChildAt.getMeasuredHeight();
                    LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                    int i12 = layoutParams.gravity;
                    if (i12 < 0) {
                        i12 = i11;
                    }
                    int absoluteGravity = GravityCompat.getAbsoluteGravity(i12, ViewCompat.getLayoutDirection(this)) & 7;
                    if (absoluteGravity != 1) {
                        if (absoluteGravity != 5) {
                            i7 = layoutParams.leftMargin + paddingLeft;
                        } else {
                            i5 = paddingRight - measuredWidth;
                            i6 = layoutParams.rightMargin;
                        }
                        int i13 = i7;
                        if (hasDividerBeforeChildAt(childrenSkipCount)) {
                            paddingTop += this.mDividerHeight;
                        }
                        int i14 = paddingTop + layoutParams.topMargin;
                        setChildFrame(virtualChildAt, i13, i14 + getLocationOffset(virtualChildAt), measuredWidth, measuredHeight);
                        paddingTop = i14 + measuredHeight + layoutParams.bottomMargin + getNextLocationOffset(virtualChildAt);
                        childrenSkipCount += getChildrenSkipCount(virtualChildAt, childrenSkipCount);
                    } else {
                        i5 = ((paddingRight2 - measuredWidth) / 2) + paddingLeft + layoutParams.leftMargin;
                        i6 = layoutParams.rightMargin;
                    }
                    i7 = i5 - i6;
                    int i15 = i7;
                    if (hasDividerBeforeChildAt(childrenSkipCount)) {
                        paddingTop += this.mDividerHeight;
                    }
                    int i16 = paddingTop + layoutParams.topMargin;
                    setChildFrame(virtualChildAt, i15, i16 + getLocationOffset(virtualChildAt), measuredWidth, measuredHeight);
                    paddingTop = i16 + measuredHeight + layoutParams.bottomMargin + getNextLocationOffset(virtualChildAt);
                    childrenSkipCount += getChildrenSkipCount(virtualChildAt, childrenSkipCount);
                }
                childrenSkipCount++;
            }
            childrenSkipCount++;
        }
    }

    void measureChildBeforeLayout(View view, int i, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    /* JADX WARN: Code duplicated, block: B:203:0x0461  */
    /* JADX WARN: Code duplicated, block: B:204:0x0464  */
    void measureHorizontal(int i, int i2) {
        int i3;
        int i4;
        float f;
        int i5;
        int i6;
        int i7;
        int i8;
        int iMax;
        int i9;
        int baseline;
        int i10;
        int i11;
        byte b;
        int i12;
        int i13;
        int i14;
        boolean z;
        View view;
        boolean z2;
        int baseline2;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (this.mMaxAscent == null || this.mMaxDescent == null) {
            this.mMaxAscent = new int[4];
            this.mMaxDescent = new int[4];
        }
        int[] iArr = this.mMaxAscent;
        int[] iArr2 = this.mMaxDescent;
        iArr[3] = -1;
        iArr[2] = -1;
        iArr[1] = -1;
        iArr[0] = -1;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        boolean z3 = this.mBaselineAligned;
        boolean z4 = this.mUseLargestChild;
        int i15 = 1073741824;
        boolean z5 = mode == 1073741824;
        boolean z6 = z4;
        int childrenSkipCount = 0;
        int i16 = 0;
        int iMax2 = 0;
        boolean z7 = false;
        int iCombineMeasuredStates = 0;
        boolean z8 = false;
        boolean z9 = true;
        float f2 = 0.0f;
        int iMax3 = 0;
        int iMax4 = 0;
        while (true) {
            i3 = i16;
            if (childrenSkipCount >= virtualChildCount) {
                break;
            }
            boolean z10 = z3;
            View virtualChildAt = getVirtualChildAt(childrenSkipCount);
            if (virtualChildAt == null) {
                this.mTotalLength += measureNullChild(childrenSkipCount);
            } else {
                if (virtualChildAt.getVisibility() == 8) {
                    childrenSkipCount += getChildrenSkipCount(virtualChildAt, childrenSkipCount);
                } else {
                    if (hasDividerBeforeChildAt(childrenSkipCount)) {
                        this.mTotalLength += this.mDividerWidth;
                    }
                    LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                    float f3 = f2 + layoutParams.weight;
                    if (mode == i15 && layoutParams.width == 0 && layoutParams.weight > 0.0f) {
                        if (z5) {
                            this.mTotalLength += layoutParams.leftMargin + layoutParams.rightMargin;
                        } else {
                            int i17 = this.mTotalLength;
                            this.mTotalLength = Math.max(i17, layoutParams.leftMargin + i17 + layoutParams.rightMargin);
                        }
                        if (z10) {
                            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                            virtualChildAt.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                        } else {
                            z7 = true;
                        }
                        i13 = i3;
                        i14 = 1073741824;
                        z = z6;
                        view = virtualChildAt;
                    } else {
                        if (layoutParams.width != 0 || layoutParams.weight <= 0.0f) {
                            b = -2;
                            i12 = Integer.MIN_VALUE;
                        } else {
                            b = -2;
                            layoutParams.width = -2;
                            i12 = 0;
                        }
                        virtualChildCount = virtualChildCount;
                        mode = mode;
                        iArr = iArr;
                        i13 = i3;
                        i14 = 1073741824;
                        z = z6;
                        iArr2 = iArr2;
                        int i18 = i12;
                        measureChildBeforeLayout(virtualChildAt, childrenSkipCount, i, f3 == 0.0f ? this.mTotalLength : 0, i2, 0);
                        view = virtualChildAt;
                        if (i18 != Integer.MIN_VALUE) {
                            layoutParams.width = i18;
                        }
                        int measuredWidth = view.getMeasuredWidth();
                        if (z5) {
                            this.mTotalLength += layoutParams.leftMargin + measuredWidth + layoutParams.rightMargin + getNextLocationOffset(view);
                        } else {
                            int i19 = this.mTotalLength;
                            this.mTotalLength = Math.max(i19, i19 + measuredWidth + layoutParams.leftMargin + layoutParams.rightMargin + getNextLocationOffset(view));
                        }
                        if (z) {
                            iMax2 = Math.max(measuredWidth, iMax2);
                        }
                    }
                    if (mode2 == i14 || layoutParams.height != -1) {
                        z2 = false;
                    } else {
                        z2 = true;
                        z8 = true;
                    }
                    int i20 = layoutParams.topMargin + layoutParams.bottomMargin;
                    int measuredHeight = view.getMeasuredHeight() + i20;
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                    if (z10 && (baseline2 = view.getBaseline()) != -1) {
                        int i21 = ((((layoutParams.gravity < 0 ? this.mGravity : layoutParams.gravity) & InterfaceC3669k1.d.b.j) >> 4) & (-2)) >> 1;
                        iArr[i21] = Math.max(iArr[i21], baseline2);
                        iArr2[i21] = Math.max(iArr2[i21], measuredHeight - baseline2);
                    }
                    int iMax5 = Math.max(i13, measuredHeight);
                    z9 = z9 && layoutParams.height == -1;
                    if (layoutParams.weight > 0.0f) {
                        if (!z2) {
                            i20 = measuredHeight;
                        }
                        iMax4 = Math.max(iMax4, i20);
                    } else {
                        if (z2 == 0) {
                            i20 = measuredHeight;
                        }
                        iMax3 = Math.max(iMax3, i20);
                    }
                    childrenSkipCount += getChildrenSkipCount(view, childrenSkipCount);
                    i16 = iMax5;
                    f2 = f3;
                }
                childrenSkipCount++;
                z6 = z;
                iArr2 = iArr2;
                z3 = z10;
                mode = mode;
                iArr = iArr;
                virtualChildCount = virtualChildCount;
                i15 = 1073741824;
            }
            virtualChildCount = virtualChildCount;
            mode = mode;
            iArr = iArr;
            iArr2 = iArr2;
            i16 = i3;
            z = z6;
            childrenSkipCount++;
            z6 = z;
            iArr2 = iArr2;
            z3 = z10;
            mode = mode;
            iArr = iArr;
            virtualChildCount = virtualChildCount;
            i15 = 1073741824;
        }
        boolean z11 = z3;
        int i22 = virtualChildCount;
        int i23 = mode;
        int[] iArr3 = iArr;
        int[] iArr4 = iArr2;
        int i24 = iCombineMeasuredStates;
        boolean z12 = z6;
        if (this.mTotalLength > 0) {
            i4 = i22;
            if (hasDividerBeforeChildAt(i4)) {
                this.mTotalLength += this.mDividerWidth;
            }
        } else {
            i4 = i22;
        }
        int i25 = iArr3[1];
        int iMax6 = (i25 == -1 && iArr3[0] == -1 && iArr3[2] == -1 && iArr3[3] == -1) ? i3 : Math.max(i3, Math.max(iArr3[3], Math.max(iArr3[0], Math.max(i25, iArr3[2]))) + Math.max(iArr4[3], Math.max(iArr4[0], Math.max(iArr4[1], iArr4[2]))));
        if (z12) {
            i5 = i23;
            if (i5 == Integer.MIN_VALUE || i5 == 0) {
                this.mTotalLength = 0;
                int childrenSkipCount2 = 0;
                while (childrenSkipCount2 < i4) {
                    View virtualChildAt2 = getVirtualChildAt(childrenSkipCount2);
                    if (virtualChildAt2 == null) {
                        this.mTotalLength += measureNullChild(childrenSkipCount2);
                    } else {
                        if (virtualChildAt2.getVisibility() == 8) {
                            childrenSkipCount2 += getChildrenSkipCount(virtualChildAt2, childrenSkipCount2);
                        } else {
                            LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                            if (z5) {
                                this.mTotalLength += layoutParams2.leftMargin + iMax2 + layoutParams2.rightMargin + getNextLocationOffset(virtualChildAt2);
                            } else {
                                f2 = f2;
                                int i26 = this.mTotalLength;
                                this.mTotalLength = Math.max(i26, i26 + iMax2 + layoutParams2.leftMargin + layoutParams2.rightMargin + getNextLocationOffset(virtualChildAt2));
                            }
                        }
                        childrenSkipCount2++;
                        f2 = f2;
                        iMax6 = iMax6;
                    }
                    childrenSkipCount2++;
                    f2 = f2;
                    iMax6 = iMax6;
                }
            }
            f = f2;
        } else {
            f = f2;
            i5 = i23;
        }
        int iMax7 = iMax6;
        int paddingLeft = this.mTotalLength + getPaddingLeft() + getPaddingRight();
        this.mTotalLength = paddingLeft;
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i, 0);
        int i27 = (16777215 & iResolveSizeAndState) - this.mTotalLength;
        if (z7 || (i27 != 0 && f > 0.0f)) {
            float f4 = this.mWeightSum;
            if (f4 > 0.0f) {
                f = f4;
            }
            iArr3[3] = -1;
            iArr3[2] = -1;
            iArr3[1] = -1;
            iArr3[0] = -1;
            iArr4[3] = -1;
            iArr4[2] = -1;
            iArr4[1] = -1;
            iArr4[0] = -1;
            this.mTotalLength = 0;
            int iCombineMeasuredStates2 = i24;
            int iMax8 = -1;
            int i28 = 0;
            while (i28 < i4) {
                View virtualChildAt3 = getVirtualChildAt(i28);
                if (virtualChildAt3 == null || virtualChildAt3.getVisibility() == 8) {
                    iResolveSizeAndState = iResolveSizeAndState;
                } else {
                    LayoutParams layoutParams3 = (LayoutParams) virtualChildAt3.getLayoutParams();
                    float f5 = layoutParams3.weight;
                    if (f5 > 0.0f) {
                        int i29 = (int) ((i27 * f5) / f);
                        f -= f5;
                        i27 -= i29;
                        int childMeasureSpec = getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom() + layoutParams3.topMargin + layoutParams3.bottomMargin, layoutParams3.height);
                        if (layoutParams3.width == 0) {
                            i11 = 1073741824;
                            if (i5 == 1073741824) {
                                if (i29 <= 0) {
                                    i29 = 0;
                                }
                                virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(i29, 1073741824), childMeasureSpec);
                            }
                            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, virtualChildAt3.getMeasuredState() & ViewCompat.MEASURED_STATE_MASK);
                        } else {
                            i11 = 1073741824;
                        }
                        int measuredWidth2 = virtualChildAt3.getMeasuredWidth() + i29;
                        if (measuredWidth2 < 0) {
                            measuredWidth2 = 0;
                        }
                        virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2, i11), childMeasureSpec);
                        iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, virtualChildAt3.getMeasuredState() & ViewCompat.MEASURED_STATE_MASK);
                    }
                    if (z5) {
                        this.mTotalLength += virtualChildAt3.getMeasuredWidth() + layoutParams3.leftMargin + layoutParams3.rightMargin + getNextLocationOffset(virtualChildAt3);
                    } else {
                        int i30 = this.mTotalLength;
                        this.mTotalLength = Math.max(i30, virtualChildAt3.getMeasuredWidth() + i30 + layoutParams3.leftMargin + layoutParams3.rightMargin + getNextLocationOffset(virtualChildAt3));
                    }
                    boolean z13 = mode2 != 1073741824 && layoutParams3.height == -1;
                    int i31 = layoutParams3.topMargin + layoutParams3.bottomMargin;
                    int measuredHeight2 = virtualChildAt3.getMeasuredHeight() + i31;
                    iMax8 = Math.max(iMax8, measuredHeight2);
                    if (!z13) {
                        i31 = measuredHeight2;
                    }
                    int iMax9 = Math.max(iMax3, i31);
                    if (z9) {
                        i9 = -1;
                        boolean z14 = layoutParams3.height == -1;
                        if (z11 && (baseline = virtualChildAt3.getBaseline()) != i9) {
                            if (layoutParams3.gravity < 0) {
                                i10 = this.mGravity;
                            } else {
                                i10 = layoutParams3.gravity;
                            }
                            int i32 = (((i10 & InterfaceC3669k1.d.b.j) >> 4) & (-2)) >> 1;
                            iArr3[i32] = Math.max(iArr3[i32], baseline);
                            iArr4[i32] = Math.max(iArr4[i32], measuredHeight2 - baseline);
                        }
                        iMax3 = iMax9;
                        z9 = z14;
                    } else {
                        i9 = -1;
                    }
                    if (z11) {
                        if (layoutParams3.gravity < 0) {
                            i10 = this.mGravity;
                        } else {
                            i10 = layoutParams3.gravity;
                        }
                        int i33 = (((i10 & InterfaceC3669k1.d.b.j) >> 4) & (-2)) >> 1;
                        iArr3[i33] = Math.max(iArr3[i33], baseline);
                        iArr4[i33] = Math.max(iArr4[i33], measuredHeight2 - baseline);
                    }
                    iMax3 = iMax9;
                    z9 = z14;
                }
                i28++;
                iResolveSizeAndState = iResolveSizeAndState;
            }
            i6 = iResolveSizeAndState;
            i7 = ViewCompat.MEASURED_STATE_MASK;
            this.mTotalLength += getPaddingLeft() + getPaddingRight();
            int i34 = iArr3[1];
            iMax7 = (i34 == -1 && iArr3[0] == -1 && iArr3[2] == -1 && iArr3[3] == -1) ? iMax8 : Math.max(iMax8, Math.max(iArr3[3], Math.max(iArr3[0], Math.max(i34, iArr3[2]))) + Math.max(iArr4[3], Math.max(iArr4[0], Math.max(iArr4[1], iArr4[2]))));
            i8 = iCombineMeasuredStates2;
            iMax = iMax3;
        } else {
            iMax = Math.max(iMax3, iMax4);
            if (z12 && i5 != 1073741824) {
                for (int i35 = 0; i35 < i4; i35++) {
                    View virtualChildAt4 = getVirtualChildAt(i35);
                    if (virtualChildAt4 != null && virtualChildAt4.getVisibility() != 8 && ((LayoutParams) virtualChildAt4.getLayoutParams()).weight > 0.0f) {
                        virtualChildAt4.measure(View.MeasureSpec.makeMeasureSpec(iMax2, 1073741824), View.MeasureSpec.makeMeasureSpec(virtualChildAt4.getMeasuredHeight(), 1073741824));
                    }
                }
            }
            i6 = iResolveSizeAndState;
            i8 = i24;
            i7 = ViewCompat.MEASURED_STATE_MASK;
        }
        if (z9 || mode2 == 1073741824) {
            iMax = iMax7;
        }
        setMeasuredDimension(i6 | (i8 & i7), View.resolveSizeAndState(Math.max(iMax + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i2, i8 << 16));
        if (z8) {
            forceUniformHeight(i4, i);
        }
    }

    int measureNullChild(int i) {
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:154:0x031a  */
    /* JADX WARN: Code duplicated, block: B:64:0x0168 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:66:0x016b  */
    /* JADX WARN: Code duplicated, block: B:68:0x0171 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:70:0x0174  */
    void measureVertical(int i, int i2) {
        int i3;
        int iMax;
        int i4;
        int i5;
        boolean z;
        int i6;
        int i7;
        int i8;
        int i9;
        float f;
        int i10;
        boolean z2;
        int i11;
        int i12;
        View view;
        int i13;
        int i14;
        boolean z3;
        int iMax2;
        int i15;
        int i16;
        int iMax3;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i17 = this.mBaselineAlignedChildIndex;
        boolean z4 = this.mUseLargestChild;
        int childrenSkipCount = 0;
        int i18 = 0;
        int iMax4 = 0;
        int i19 = 0;
        int i20 = 0;
        int iMax5 = 0;
        boolean z5 = false;
        boolean z6 = false;
        float f2 = 0.0f;
        boolean z7 = true;
        while (true) {
            int i21 = 8;
            if (childrenSkipCount >= virtualChildCount) {
                float f3 = f2;
                int i22 = iMax4;
                int i23 = virtualChildCount;
                int i24 = mode2;
                boolean z8 = z4;
                int i25 = i18;
                int iMax6 = i19;
                int iCombineMeasuredStates = i20;
                if (this.mTotalLength > 0) {
                    i3 = i23;
                    if (hasDividerBeforeChildAt(i3)) {
                        this.mTotalLength += this.mDividerHeight;
                    }
                } else {
                    i3 = i23;
                }
                int i26 = i24;
                if (z8 && (i26 == Integer.MIN_VALUE || i26 == 0)) {
                    this.mTotalLength = 0;
                    int childrenSkipCount2 = 0;
                    while (childrenSkipCount2 < i3) {
                        View virtualChildAt = getVirtualChildAt(childrenSkipCount2);
                        if (virtualChildAt == null) {
                            this.mTotalLength += measureNullChild(childrenSkipCount2);
                        } else if (virtualChildAt.getVisibility() == i21) {
                            childrenSkipCount2 += getChildrenSkipCount(virtualChildAt, childrenSkipCount2);
                        } else {
                            LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                            int i27 = this.mTotalLength;
                            this.mTotalLength = Math.max(i27, i27 + i22 + layoutParams.topMargin + layoutParams.bottomMargin + getNextLocationOffset(virtualChildAt));
                        }
                        childrenSkipCount2++;
                        i21 = 8;
                    }
                }
                int paddingTop = this.mTotalLength + getPaddingTop() + getPaddingBottom();
                this.mTotalLength = paddingTop;
                int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i2, 0);
                int i28 = (16777215 & iResolveSizeAndState) - this.mTotalLength;
                if (z5 || (i28 != 0 && f3 > 0.0f)) {
                    float f4 = this.mWeightSum;
                    if (f4 > 0.0f) {
                        f3 = f4;
                    }
                    this.mTotalLength = 0;
                    int i29 = i28;
                    int i30 = 0;
                    while (i30 < i3) {
                        View virtualChildAt2 = getVirtualChildAt(i30);
                        if (virtualChildAt2.getVisibility() == 8) {
                            i4 = i26;
                            i30 = i30;
                        } else {
                            LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                            float f5 = layoutParams2.weight;
                            if (f5 > 0.0f) {
                                int i31 = (int) ((i29 * f5) / f3);
                                f3 -= f5;
                                i29 -= i31;
                                int childMeasureSpec = getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + layoutParams2.leftMargin + layoutParams2.rightMargin, layoutParams2.width);
                                if (layoutParams2.height == 0) {
                                    i6 = 1073741824;
                                    if (i26 == 1073741824) {
                                        if (i31 <= 0) {
                                            i31 = 0;
                                        }
                                        virtualChildAt2.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i31, 1073741824));
                                    }
                                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, virtualChildAt2.getMeasuredState() & InputDeviceCompat.SOURCE_ANY);
                                } else {
                                    i6 = 1073741824;
                                }
                                int measuredHeight = virtualChildAt2.getMeasuredHeight() + i31;
                                if (measuredHeight < 0) {
                                    measuredHeight = 0;
                                }
                                virtualChildAt2.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight, i6));
                                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, virtualChildAt2.getMeasuredState() & InputDeviceCompat.SOURCE_ANY);
                            }
                            int i32 = layoutParams2.leftMargin + layoutParams2.rightMargin;
                            int measuredWidth = virtualChildAt2.getMeasuredWidth() + i32;
                            iMax6 = Math.max(iMax6, measuredWidth);
                            if (mode != 1073741824) {
                                i4 = i26;
                                i5 = -1;
                                if (layoutParams2.width != -1) {
                                }
                                int iMax7 = Math.max(iMax5, i32);
                                if (z7 || layoutParams2.width != i5) {
                                    z = false;
                                } else {
                                    z = true;
                                }
                                int i33 = this.mTotalLength;
                                this.mTotalLength = Math.max(i33, virtualChildAt2.getMeasuredHeight() + i33 + layoutParams2.topMargin + layoutParams2.bottomMargin + getNextLocationOffset(virtualChildAt2));
                                iMax5 = iMax7;
                                z7 = z;
                            } else {
                                i4 = i26;
                                i5 = -1;
                            }
                            i32 = measuredWidth;
                            int iMax8 = Math.max(iMax5, i32);
                            if (z7) {
                                z = false;
                            } else {
                                z = false;
                            }
                            int i34 = this.mTotalLength;
                            this.mTotalLength = Math.max(i34, virtualChildAt2.getMeasuredHeight() + i34 + layoutParams2.topMargin + layoutParams2.bottomMargin + getNextLocationOffset(virtualChildAt2));
                            iMax5 = iMax8;
                            z7 = z;
                        }
                        i30++;
                        i26 = i4;
                    }
                    this.mTotalLength += getPaddingTop() + getPaddingBottom();
                    iMax = iMax5;
                } else {
                    iMax = Math.max(iMax5, i25);
                    if (z8 && i26 != 1073741824) {
                        for (int i35 = 0; i35 < i3; i35++) {
                            View virtualChildAt3 = getVirtualChildAt(i35);
                            if (virtualChildAt3 != null && virtualChildAt3.getVisibility() != 8 && ((LayoutParams) virtualChildAt3.getLayoutParams()).weight > 0.0f) {
                                virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(virtualChildAt3.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i22, 1073741824));
                            }
                        }
                    }
                }
                if (!z7 && mode != 1073741824) {
                    iMax6 = iMax;
                }
                setMeasuredDimension(View.resolveSizeAndState(Math.max(iMax6 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, iCombineMeasuredStates), iResolveSizeAndState);
                if (z6) {
                    forceUniformWidth(i3, i2);
                    return;
                }
                return;
            }
            float f6 = f2;
            View virtualChildAt4 = getVirtualChildAt(childrenSkipCount);
            if (virtualChildAt4 == null) {
                this.mTotalLength += measureNullChild(childrenSkipCount);
            } else {
                if (virtualChildAt4.getVisibility() == 8) {
                    childrenSkipCount += getChildrenSkipCount(virtualChildAt4, childrenSkipCount);
                } else {
                    if (hasDividerBeforeChildAt(childrenSkipCount)) {
                        this.mTotalLength += this.mDividerHeight;
                    }
                    LayoutParams layoutParams3 = (LayoutParams) virtualChildAt4.getLayoutParams();
                    float f7 = f6 + layoutParams3.weight;
                    if (mode2 == 1073741824 && layoutParams3.height == 0 && layoutParams3.weight > 0.0f) {
                        int i36 = this.mTotalLength;
                        this.mTotalLength = Math.max(i36, layoutParams3.topMargin + i36 + layoutParams3.bottomMargin);
                        i10 = virtualChildCount;
                        z2 = z4;
                        f = f7;
                        z5 = true;
                        i12 = i18;
                        i11 = i20;
                        i13 = mode2;
                        i14 = i19;
                    } else {
                        if (layoutParams3.height != 0 || layoutParams3.weight <= 0.0f) {
                            i7 = Integer.MIN_VALUE;
                        } else {
                            layoutParams3.height = -2;
                            i7 = 0;
                        }
                        if (f7 == 0.0f) {
                            int i37 = i20;
                            i9 = this.mTotalLength;
                            i8 = i37;
                        } else {
                            i8 = i20;
                            i9 = 0;
                        }
                        int i38 = iMax4;
                        f = f7;
                        i10 = virtualChildCount;
                        z2 = z4;
                        i11 = i8;
                        i12 = i18;
                        view = virtualChildAt4;
                        i13 = mode2;
                        i14 = i19;
                        measureChildBeforeLayout(view, childrenSkipCount, i, 0, i2, i9);
                        if (i7 != Integer.MIN_VALUE) {
                            layoutParams3.height = i7;
                        }
                        int measuredHeight2 = view.getMeasuredHeight();
                        int i39 = this.mTotalLength;
                        this.mTotalLength = Math.max(i39, i39 + measuredHeight2 + layoutParams3.topMargin + layoutParams3.bottomMargin + getNextLocationOffset(view));
                        iMax4 = z2 ? Math.max(measuredHeight2, i38) : i38;
                    }
                    if (i17 >= 0 && i17 == childrenSkipCount + 1) {
                        view = virtualChildAt4;
                        this.mBaselineChildTop = this.mTotalLength;
                    }
                    if (childrenSkipCount < i17 && layoutParams3.weight > 0.0f) {
                        throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                    }
                    if (mode == 1073741824 || layoutParams3.width != -1) {
                        z3 = false;
                    } else {
                        z3 = true;
                        z6 = true;
                    }
                    int i40 = layoutParams3.leftMargin + layoutParams3.rightMargin;
                    int measuredWidth2 = view.getMeasuredWidth() + i40;
                    iMax2 = Math.max(i14, measuredWidth2);
                    i15 = iMax4;
                    int iCombineMeasuredStates2 = View.combineMeasuredStates(i11, view.getMeasuredState());
                    if (z7) {
                        i16 = iCombineMeasuredStates2;
                        z7 = layoutParams3.width == -1;
                        if (layoutParams3.weight > 0.0f) {
                            if (!z3) {
                                i40 = measuredWidth2;
                            }
                            iMax3 = Math.max(i12, i40);
                        } else {
                            if (!z3) {
                                i40 = measuredWidth2;
                            }
                            iMax5 = Math.max(iMax5, i40);
                            iMax3 = i12;
                        }
                        childrenSkipCount += getChildrenSkipCount(view, childrenSkipCount);
                        f2 = f;
                        i20 = i16;
                    } else {
                        i16 = iCombineMeasuredStates2;
                    }
                    if (layoutParams3.weight > 0.0f) {
                        if (!z3) {
                            i40 = measuredWidth2;
                        }
                        iMax3 = Math.max(i12, i40);
                    } else {
                        if (!z3) {
                            i40 = measuredWidth2;
                        }
                        iMax5 = Math.max(iMax5, i40);
                        iMax3 = i12;
                    }
                    childrenSkipCount += getChildrenSkipCount(view, childrenSkipCount);
                    f2 = f;
                    i20 = i16;
                }
                childrenSkipCount++;
                i18 = iMax3;
                i19 = iMax2;
                iMax4 = i15;
                mode2 = i13;
                z4 = z2;
                virtualChildCount = i10;
            }
            i15 = iMax4;
            i10 = virtualChildCount;
            i13 = mode2;
            z2 = z4;
            f2 = f6;
            iMax3 = i18;
            iMax2 = i19;
            childrenSkipCount++;
            i18 = iMax3;
            i19 = iMax2;
            iMax4 = i15;
            mode2 = i13;
            z4 = z2;
            virtualChildCount = i10;
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.mDivider == null) {
            return;
        }
        if (this.mOrientation == 1) {
            drawDividersVertical(canvas);
        } else {
            drawDividersHorizontal(canvas);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.mOrientation == 1) {
            layoutVertical(i, i2, i3, i4);
        } else {
            layoutHorizontal(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.mOrientation == 1) {
            measureVertical(i, i2);
        } else {
            measureHorizontal(i, i2);
        }
    }

    public void setBaselineAligned(boolean z) {
        this.mBaselineAligned = z;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i < 0 || i >= getChildCount()) {
            throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
        }
        this.mBaselineAlignedChildIndex = i;
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.mDivider) {
            return;
        }
        this.mDivider = drawable;
        if (drawable != null) {
            this.mDividerWidth = drawable.getIntrinsicWidth();
            this.mDividerHeight = drawable.getIntrinsicHeight();
        } else {
            this.mDividerWidth = 0;
            this.mDividerHeight = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setDividerPadding(int i) {
        this.mDividerPadding = i;
    }

    public void setGravity(int i) {
        if (this.mGravity != i) {
            if ((8388615 & i) == 0) {
                i |= GravityCompat.START;
            }
            if ((i & InterfaceC3669k1.d.b.j) == 0) {
                i |= 48;
            }
            this.mGravity = i;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        int i3 = this.mGravity;
        if ((8388615 & i3) != i2) {
            this.mGravity = i2 | ((-8388616) & i3);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.mUseLargestChild = z;
    }

    public void setOrientation(int i) {
        if (this.mOrientation != i) {
            this.mOrientation = i;
            requestLayout();
        }
    }

    public void setShowDividers(int i) {
        if (i != this.mShowDividers) {
            requestLayout();
        }
        this.mShowDividers = i;
    }

    public void setVerticalGravity(int i) {
        int i2 = i & InterfaceC3669k1.d.b.j;
        int i3 = this.mGravity;
        if ((i3 & InterfaceC3669k1.d.b.j) != i2) {
            this.mGravity = i2 | (i3 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f) {
        this.mWeightSum = Math.max(0.0f, f);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
