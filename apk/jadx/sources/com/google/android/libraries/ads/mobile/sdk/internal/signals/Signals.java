package com.google.android.libraries.ads.mobile.sdk.internal.signals;

import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration;
import com.google.android.libraries.ads.mobile.sdk.internal.common.ParentAdConfig;
import com.google.android.libraries.ads.mobile.sdk.internal.common.ParentCommonConfig;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.annotations.SerializedName;
import com.ironsource.C3510b4;
import com.ironsource.Nc;
import com.ironsource.R6;
import com.ironsource.adapters.admob.AdMobConstants;
import com.tapjoy.TapjoyConstants;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import com.unity3d.services.core.device.MimeTypes;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.m83;
import kotlin.nj3;
import p005kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Ð\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\b\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001a\b\u0007\u0018\u0000 ë\u00012\u00020\u0001:\u0002ì\u0001R\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R$\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u00078\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0018\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u0004R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0004R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0004R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0004R\u0016\u0010\u0014\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0017\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0019\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u0018R\u0016\u0010\u001a\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u0018R\u0016\u0010\u001b\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u0018R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u0004R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u0004R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u000fR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010\u000fR\u0016\u0010!\u001a\u00020 8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R*\u0010#\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0002\u0018\u0001`\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b#\u0010\tR\u0018\u0010$\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010&\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b&\u0010%R\u0018\u0010'\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b'\u0010%R\u0018\u0010(\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b(\u0010%R\u0018\u0010)\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b)\u0010%R\u0018\u0010*\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b*\u0010%R\u0018\u0010+\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b+\u0010%R\u0018\u0010,\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b,\u0010%R\u0016\u0010-\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b-\u0010\u0018R\u0018\u0010.\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b.\u0010%R\u0018\u00100\u001a\u0004\u0018\u00010/8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0016\u00102\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b2\u0010\fR\u0016\u00103\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b3\u0010\fR\u0018\u00104\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b4\u0010\u0004R\u0018\u00105\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b5\u0010\u0004R\u001e\u00107\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u0001068\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b7\u00108R$\u0010:\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u0001098\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0018\u0010<\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b<\u0010\u0004R\u0016\u0010=\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b=\u0010\u0018R\u0018\u0010>\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b>\u0010\u0004R\u0018\u0010?\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b?\u0010\u0004R\u0016\u0010@\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b@\u0010\u0004R$\u0010A\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u0005j\b\u0012\u0004\u0012\u00020\u0002`\u00078\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bA\u0010\tR \u0010D\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020C0B8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bD\u0010;R\u0018\u0010E\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bE\u0010\u000fR$\u0010F\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u0005j\b\u0012\u0004\u0012\u00020\u0002`\u00078\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bF\u0010\tR\u0014\u0010H\u001a\u00020G8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bH\u0010IR\u0018\u0010K\u001a\u0004\u0018\u00010J8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0016\u0010M\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bM\u0010\u0018R\u0016\u0010N\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bN\u0010\fR\u0016\u0010O\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bO\u0010\fR\u0016\u0010P\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bP\u0010\u0018R\u0018\u0010Q\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bQ\u0010%R\u0018\u0010R\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bR\u0010%R\u0018\u0010T\u001a\u0004\u0018\u00010S8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bT\u0010UR\u0016\u0010V\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bV\u0010\u0018R\u0016\u0010W\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bW\u0010\u0018R\u0016\u0010X\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bX\u0010\u0015R\u0016\u0010Y\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bY\u0010\fR\u0014\u0010[\u001a\u00020Z8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b[\u0010\\R\u0016\u0010]\u001a\u00020 8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b]\u0010\"R\u0018\u0010^\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b^\u0010\u0004R\u0018\u0010`\u001a\u0004\u0018\u00010_8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b`\u0010aR\u0018\u0010b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bb\u0010\u0004R\u0018\u0010c\u001a\u0004\u0018\u00010/8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bc\u00101R\u0016\u0010e\u001a\u00020d8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\be\u0010fR\u0018\u0010g\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bg\u0010\u0004R\u0018\u0010h\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bh\u0010\u0004R\u0018\u0010i\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bi\u0010\u000fR\u0016\u0010j\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bj\u0010\u0018R\u0016\u0010k\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bk\u0010\u0018R\u0018\u0010l\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bl\u0010\u0004R\u0018\u0010m\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bm\u0010%R\u0018\u0010n\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bn\u0010\u0004R\u0018\u0010o\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bo\u0010\u0004R\u0018\u0010p\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bp\u0010\u0004R\u0016\u0010q\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bq\u0010\u0004R\u0018\u0010r\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\br\u0010%R\u0018\u0010s\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bs\u0010\u0004R\u0018\u0010t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bt\u0010\u0004R\u0018\u0010u\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bu\u0010\u0004R\u0018\u0010v\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bv\u0010\u0004R\u0018\u0010w\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bw\u0010\u0004R*\u0010z\u001a\n\u0012\u0004\u0012\u00020y\u0018\u00010x8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bz\u0010{\u001a\u0004\b|\u0010}\"\u0004\b|\u0010~R\u0018\u0010\u007f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u007f\u0010\u0004R\u001a\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b\u0080\u0001\u0010\u0004R\u001a\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b\u0081\u0001\u0010\u0004R\u001a\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b\u0082\u0001\u0010\u0004R\u001a\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b\u0083\u0001\u0010\u0004R\u001a\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b\u0084\u0001\u0010\u0004R\u0018\u0010\u0085\u0001\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b\u0085\u0001\u0010\u0004R\u0016\u0010\u0086\u0001\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0007\n\u0005\b\u0086\u0001\u0010\fR\u0018\u0010\u0087\u0001\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b\u0087\u0001\u0010\fR\u001a\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b\u0088\u0001\u0010\u0004R\u001a\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b\u0089\u0001\u0010%R\u001a\u0010\u008a\u0001\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b\u008a\u0001\u0010\u0004R\u0018\u0010\u008c\u0001\u001a\u00030\u008b\u00018\u0006X\u0087\u0004¢\u0006\b\n\u0006\b\u008c\u0001\u0010\u008d\u0001R\u001a\u0010\u008e\u0001\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b\u008e\u0001\u0010\u000fR\u001a\u0010\u008f\u0001\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b\u008f\u0001\u0010\u000fR\u001a\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b\u0090\u0001\u0010\u0004R\u001a\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b\u0091\u0001\u0010\u0004R\u001a\u0010\u0092\u0001\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b\u0092\u0001\u0010\u000fR\u0018\u0010\u0093\u0001\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b\u0093\u0001\u0010\fR\u001a\u0010\u0094\u0001\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b\u0094\u0001\u0010\u0004R\u001a\u0010\u0095\u0001\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b\u0095\u0001\u0010\u0004R&\u0010\u0096\u0001\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u0005j\b\u0012\u0004\u0012\u00020\u0002`\u00078\u0006X\u0087\u0004¢\u0006\u0007\n\u0005\b\u0096\u0001\u0010\tR\u001a\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b\u0097\u0001\u0010\u0004R\u001a\u0010\u0098\u0001\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b\u0098\u0001\u0010\u0004R\u001a\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b\u0099\u0001\u0010\u0004R\u001a\u0010\u009a\u0001\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b\u009a\u0001\u0010\u000fR\u001a\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b\u009b\u0001\u0010%R\u001a\u0010\u009c\u0001\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b\u009c\u0001\u0010\u0004R\u001a\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b\u009d\u0001\u0010\u0004R\u001a\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b\u009e\u0001\u0010%R\u001a\u0010\u009f\u0001\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b\u009f\u0001\u0010%R\u001a\u0010 \u0001\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b \u0001\u0010%R\u001a\u0010¡\u0001\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b¡\u0001\u0010\u0004R\u001a\u0010¢\u0001\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b¢\u0001\u0010\u000fR\u001a\u0010£\u0001\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b£\u0001\u0010\u0004R\u001c\u0010¥\u0001\u001a\u0005\u0018\u00010¤\u00018\u0006@\u0006X\u0087\u000e¢\u0006\b\n\u0006\b¥\u0001\u0010¦\u0001R\u001a\u0010§\u0001\u001a\u0004\u0018\u00010d8\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b§\u0001\u0010fR\u001a\u0010¨\u0001\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b¨\u0001\u0010%R \u0010©\u0001\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010x8\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b©\u0001\u0010{R \u0010ª\u0001\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010x8\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\bª\u0001\u0010{R\u001a\u0010«\u0001\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b«\u0001\u0010\u000fR\u001a\u0010¬\u0001\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b¬\u0001\u0010\u0004R\u001a\u0010\u00ad\u0001\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b\u00ad\u0001\u0010\u000fR\u001a\u0010®\u0001\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b®\u0001\u0010\u000fR\u001a\u0010¯\u0001\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b¯\u0001\u0010%R\u001a\u0010°\u0001\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b°\u0001\u0010\u000fR\u001c\u0010²\u0001\u001a\u0005\u0018\u00010±\u00018\u0006@\u0006X\u0087\u000e¢\u0006\b\n\u0006\b²\u0001\u0010³\u0001R\u001a\u0010´\u0001\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b´\u0001\u0010\u000fR\u001a\u0010µ\u0001\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\bµ\u0001\u0010%R\u001a\u0010¶\u0001\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b¶\u0001\u0010%R\u001a\u0010·\u0001\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b·\u0001\u0010\u000fR\u001a\u0010¸\u0001\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b¸\u0001\u0010\u000fR\u001a\u0010¹\u0001\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b¹\u0001\u0010\u000fR\u001a\u0010º\u0001\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\bº\u0001\u0010%R\u001a\u0010»\u0001\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b»\u0001\u0010\u0004R\u001a\u0010¼\u0001\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b¼\u0001\u0010\u0004R\u001a\u0010½\u0001\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b½\u0001\u0010\u000fR\u001a\u0010¾\u0001\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b¾\u0001\u0010\u0004R\u001a\u0010¿\u0001\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\b¿\u0001\u0010\u0004R\u001a\u0010À\u0001\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\bÀ\u0001\u0010\u0004R\u001a\u0010Á\u0001\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\bÁ\u0001\u0010\u000fR\u001a\u0010Â\u0001\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\bÂ\u0001\u0010%R\u001a\u0010Ã\u0001\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\bÃ\u0001\u0010%R&\u0010Ä\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u0001098\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\bÄ\u0001\u0010;R\u001a\u0010Å\u0001\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\bÅ\u0001\u0010\u000fR\u001a\u0010Æ\u0001\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\bÆ\u0001\u0010%R\u001a\u0010Ç\u0001\u001a\u0004\u0018\u00010/8\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\bÇ\u0001\u00101R\u001a\u0010È\u0001\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\bÈ\u0001\u0010\u0004R\u001a\u0010É\u0001\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\bÉ\u0001\u0010\u000fR\u001a\u0010Ê\u0001\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\bÊ\u0001\u0010%R\u001c\u0010Ì\u0001\u001a\u0005\u0018\u00010Ë\u00018\u0006@\u0006X\u0087\u000e¢\u0006\b\n\u0006\bÌ\u0001\u0010Í\u0001R&\u0010Î\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u0001098\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\bÎ\u0001\u0010;R\u001a\u0010Ï\u0001\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\bÏ\u0001\u0010%R\u001c\u0010Ñ\u0001\u001a\u0005\u0018\u00010Ð\u00018\u0006@\u0006X\u0087\u000e¢\u0006\b\n\u0006\bÑ\u0001\u0010Ò\u0001R\u001c\u0010Ô\u0001\u001a\u0005\u0018\u00010Ó\u00018\u0006@\u0006X\u0087\u000e¢\u0006\b\n\u0006\bÔ\u0001\u0010Õ\u0001R*\u0010Ö\u0001\u001a\u0004\u0018\u00010 8\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0006\bÖ\u0001\u0010×\u0001\u001a\u0006\bØ\u0001\u0010Ù\u0001\"\u0005\b|\u0010Ú\u0001R*\u0010Û\u0001\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0005\bÛ\u0001\u0010%\u001a\u0006\bÛ\u0001\u0010Ü\u0001\"\u0006\bÝ\u0001\u0010Þ\u0001R*\u0010ß\u0001\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0005\bß\u0001\u0010\u000f\u001a\u0006\bß\u0001\u0010à\u0001\"\u0006\bá\u0001\u0010â\u0001R\u001a\u0010ã\u0001\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\bã\u0001\u0010\u000fR\u001a\u0010ä\u0001\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\bä\u0001\u0010%R\u001a\u0010å\u0001\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\bå\u0001\u0010%R\u001a\u0010æ\u0001\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\bæ\u0001\u0010%R\u001a\u0010ç\u0001\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\bç\u0001\u0010\u000fR\u001a\u0010è\u0001\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\bè\u0001\u0010\u000fR\u001a\u0010é\u0001\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0007\n\u0005\bé\u0001\u0010\u0004R\u001b\u0010ê\u0001\u001a\u0004\u0018\u00010 8\u0006@\u0006X\u0087\u000e¢\u0006\b\n\u0006\bê\u0001\u0010×\u0001¨\u0006í\u0001"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;", "", "", "adIdPermission", "Ljava/lang/String;", "Ljava/util/ArrayList;", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdSizeBundle;", "Lkotlin/collections/ArrayList;", "adSizeArray", "Ljava/util/ArrayList;", "", "isGreaterThanMaxAllowedBannerSize", "Z", "responsiveAutoFormat", "adaptiveSlot", "Ljava/lang/Boolean;", "format", "fluidType", "multipleAdSizeString", "", "screenDensity", "F", "", "screenWidth", "I", "screenHeight", "screenWidthDip", "screenHeightDip", "orientation", "adUnitId", "isRewarded", "isRewardedInterstitial", "", "requestTimeMilliseconds", "J", "keywords", "safeAreaMarginLeftDip", "Ljava/lang/Integer;", "safeAreaMarginTopDip", "safeAreaMarginRightDip", "safeAreaMarginBottomDip", "roundedCornerTopLeftDip", "roundedCornerTopRightDip", "roundedCornerBottomLeftDip", "roundedCornerBottomRightDip", "tagForChildDirectedTreatment", "tagForAgeTreatment", "Lcom/google/gson/JsonObject;", "csrbEcoData", "Lcom/google/gson/JsonObject;", "isTestRequest", "manualImpressionsEnabled", "publisherProvidedId", "contentUrl", "", "neighboringContentUrls", "Ljava/util/Set;", "", "customTargeting", "Ljava/util/Map;", "requestAgent", "tagForUnderAgeOfConsent", "maxAdContentRating", "adResponseEncryptionKey", "adShieldSignal", "adTypes", "", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;", "adapterVersionData", "appSwitched", "grantedPermissions", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;", "personallyIdentifiableInformation", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/QualitySignals;", "qualitySignals", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/QualitySignals;", "audioMode", "isMusicActive", "isSpeakerPhoneOn", "musicVolume", "minMusicVolume", "maxMusicVolume", "", "musicVolumePercent", "Ljava/lang/Double;", "ringerMode", "ringerVolume", "appVolume", "isAppMuted", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;", "deviceSignals", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;", "timeSinceCldUpdate", "adUnitRequestSignals", "Lcom/google/gson/JsonArray;", "adUnitRequestSignalsObject", "Lcom/google/gson/JsonArray;", "commonCldSignals", "commonCldSignalsObject", "Landroid/os/Bundle;", "sharedPreferenceSignals", "Landroid/os/Bundle;", "creativeToken", "debugSignalsEnabled", "shouldCollectAdResponseLogs", "testMode", "linkedDevice", "inspectorExtras", "requestServerData", Nc.g, "clientOmidVersion", Nc.h, "packageName", "versionCode", "appName", "versionName", "displayLabel", AdMobConstants.REQUEST_ID_KEY, "realTimeBiddingSignals", "", "Lads_mobile_sdk/m83;", "realTimeBiddingSignalsObject", "Ljava/util/List;", "a", "()Ljava/util/List;", "(Ljava/util/List;)V", "gmpAppId", RemoteConfigConstants.RequestFieldKey.INSTANCE_ID, "adEventId", "appIdOrigin", "appWebPropertyCode", "applicationCode", "afmaVersion", "isNonagon", "isDecagon", "additionalCapabilities", "targetApi", "granularVersion", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;", "sdkEnvironment", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;", "canOpenGeo", "canOpenHttp", RemoteConfigConstants.RequestFieldKey.COUNTRY_CODE, "deviceCountryCode", "isEmulator", "isLatchskyDevice", RemoteConfigConstants.RequestFieldKey.LANGUAGE_CODE, "clientLanguageCode", "languageCodeList", "deviceLanguageCode", "marketVersion", "submodel", "isBattlestarDevice", "buildApiLevel", "osVersion", "carrierCode", "networkTypeCoarse", "networkTypeFine", C3510b4.j.S, "experimentIds", "transparentBackgroundSupported", "sessionId", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdUnitQualitySignals;", "adUnitQualitySignals", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdUnitQualitySignals;", "googleExtrasBundle", "nativeVersion", "nativeTemplates", "nativeCustomTemplates", "enableNativeMediaOrientation", "nativeMediaOrientation", "customMuteThisAdRequested", "customClickGestureEnabled", "customClickGestureDirection", "customClickGestureAllowTaps", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/VideoOptionsSignal;", "videoOptionsSignal", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/VideoOptionsSignal;", "isImageLoadingDisabled", "adChoicesPlacement", "numberOfRegisteredWebViews", "isBannerRefreshRequest", "isIconAdRequest", "isPictureInPictureAdRequest", "iconAdPlacement", "excludedAppIds", "correlator", "usesMediaView", "installerPackage", "initiatorPackage", "signalType", "isScarRequest", "publisherPrivacyPersonalizationState", "isHsdpSupported", "preProcessedSignals", "isPrefetchRequest", "displayCount", "localSignals", "holdingHand", "isDeviceHeld", "phoneOrientation", "Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;", "parentAdConfig", "Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;", "inMemorySdkCoreData", "numberOfAdsRequested", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;", "clientRequestBuildingData", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;", "Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;", "parentCommonConfig", "Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;", "timeSinceSdkInitMs", "Ljava/lang/Long;", "getTimeSinceSdkInitMs", "()Ljava/lang/Long;", "(Ljava/lang/Long;)V", "isS2SRecursiveRequest", "()Ljava/lang/Integer;", "c", "(Ljava/lang/Integer;)V", "isAdapterInitConfigSet", "()Ljava/lang/Boolean;", "b", "(Ljava/lang/Boolean;)V", "isSwipeableInterstitial", "maxScreenHoldDurationSeconds", "maxSlotWidth", "maxSlotHeight", "persistentCacheRequest", "crossProcessRequest", "clientEoid", "clientEoidTimestampInMs", "Companion", "ads_mobile_sdk/nj3", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class Signals {
    public static final nj3 Companion = new nj3();

    @SerializedName("preferred_ad_choices_position")
    public Integer adChoicesPlacement;

    @SerializedName("fbs_aeid")
    public String adEventId;

    @SerializedName("adid_p")
    public String adIdPermission;

    @SerializedName("arek")
    public String adResponseEncryptionKey;

    @SerializedName("ms")
    public String adShieldSignal;

    @SerializedName("valid_ad_sizes")
    public final ArrayList<AdSizeBundle> adSizeArray;

    @SerializedName("ad_types")
    public final ArrayList<String> adTypes;

    @SerializedName("slotname")
    public String adUnitId;

    @SerializedName("ad_unit_quality_signals")
    public AdUnitQualitySignals adUnitQualitySignals;

    @SerializedName("fwd_cld")
    public String adUnitRequestSignals;

    @SerializedName("fwd_cld_obj")
    public JsonArray adUnitRequestSignalsObject;

    @SerializedName("installed_adapter_data")
    public final Map<String, AdapterVersionData> adapterVersionData;

    @SerializedName("inline_adaptive_slot")
    public Boolean adaptiveSlot;

    @SerializedName("extra_caps")
    public String additionalCapabilities;

    @SerializedName("js")
    public String afmaVersion;

    @SerializedName("apm_id_origin")
    public String appIdOrigin;

    @SerializedName("fbs_aiid")
    public String appInstanceId;

    @SerializedName("an")
    public String appName;

    @SerializedName("app_switched")
    public Boolean appSwitched;

    @SerializedName("android_app_volume")
    public float appVolume;

    @SerializedName("app_wp_code")
    public String appWebPropertyCode;

    @SerializedName("app_code")
    public String applicationCode;

    @SerializedName("am")
    public int audioMode;

    @SerializedName("build_api_level")
    public Integer buildApiLevel;

    @SerializedName("cog")
    public Boolean canOpenGeo;

    @SerializedName("coh")
    public Boolean canOpenHttp;

    @SerializedName(R6.R0)
    public String carrierCode;

    @SerializedName("client_eoid")
    public String clientEoid;

    @SerializedName("client_eoid_timestamp")
    public Long clientEoidTimestampInMs;

    @SerializedName("client_hl")
    public String clientLanguageCode;

    @SerializedName("client_omid_v")
    public String clientOmidVersion;

    @SerializedName("csrb_output")
    public ClientRequestBuildingData clientRequestBuildingData;

    @SerializedName("fwd_common_cld")
    public String commonCldSignals;

    @SerializedName("fwd_common_cld_obj")
    public JsonObject commonCldSignalsObject;

    @SerializedName("url")
    public String contentUrl;

    @SerializedName("correlation_id")
    public String correlator;

    @SerializedName("gl")
    public String countryCode;

    @SerializedName("gct")
    public String creativeToken;

    @SerializedName("cpr")
    public Boolean crossProcessRequest;

    @SerializedName("eco")
    public JsonObject csrbEcoData;

    @SerializedName("sccg_tap")
    public Boolean customClickGestureAllowTaps;

    @SerializedName("sccg_dir")
    public Integer customClickGestureDirection;

    @SerializedName("ccg_on")
    public Boolean customClickGestureEnabled;

    @SerializedName("use_custom_mute")
    public Boolean customMuteThisAdRequested;

    @SerializedName("custom_targeting")
    public Map<String, String> customTargeting;

    @SerializedName("de")
    public String debugSignalsEnabled;

    @SerializedName("dgl")
    public String deviceCountryCode;

    @SerializedName("dlc")
    public String deviceLanguageCode;

    @SerializedName("device")
    public final DeviceSignals deviceSignals;

    @SerializedName("dspct")
    public Integer displayCount;

    @SerializedName("dl")
    public String displayLabel;

    @SerializedName("enable_native_media_orientation")
    public Boolean enableNativeMediaOrientation;

    @SerializedName("iconad_faids")
    public String excludedAppIds;

    @SerializedName("eid")
    public String experimentIds;

    @SerializedName("fluid")
    public String fluidType;

    @SerializedName("format")
    public String format;

    @SerializedName("gmp_app_id")
    public String gmpAppId;

    @SerializedName(HandleInvocationsFromAdViewer.KEY_EXTRAS)
    public Bundle googleExtrasBundle;

    @SerializedName("android_permissions")
    public final ArrayList<String> grantedPermissions;

    @SerializedName("ev")
    public String granularVersion;

    @SerializedName("holding_hand")
    public String holdingHand;

    @SerializedName("iconad_placement")
    public Integer iconAdPlacement;

    @SerializedName("m_state")
    public Map<String, String> inMemorySdkCoreData;

    @SerializedName("ini_pn")
    public String initiatorPackage;

    @SerializedName("inspector_extras")
    public String inspectorExtras;

    @SerializedName("ins_pn")
    public String installerPackage;

    @SerializedName("ic")
    private Boolean isAdapterInitConfigSet;

    @SerializedName("android_app_muted")
    public boolean isAppMuted;

    @SerializedName("ibrr")
    public Boolean isBannerRefreshRequest;

    @SerializedName("is_bstar")
    public Boolean isBattlestarDevice;

    @SerializedName("is_decagon")
    public boolean isDecagon;

    @SerializedName("idh")
    public Boolean isDeviceHeld;

    @SerializedName("simulator")
    public Boolean isEmulator;

    @SerializedName("is_greater_than_max_allowed_banner_size")
    public boolean isGreaterThanMaxAllowedBannerSize;

    @SerializedName("lft")
    public Integer isHsdpSupported;

    @SerializedName("iconad")
    public Boolean isIconAdRequest;

    @SerializedName("disable_image_loading")
    public Boolean isImageLoadingDisabled;

    @SerializedName("is_latchsky")
    public boolean isLatchskyDevice;

    @SerializedName("ma")
    public boolean isMusicActive;

    @SerializedName("is_nonagon")
    public final boolean isNonagon;

    @SerializedName("picture_in_picture")
    public Boolean isPictureInPictureAdRequest;

    @SerializedName("is_sdk_preload")
    public Boolean isPrefetchRequest;

    @SerializedName("rbv")
    public Boolean isRewarded;

    @SerializedName("rbi")
    public Boolean isRewardedInterstitial;

    @SerializedName("s2s_rr")
    private Integer isS2SRecursiveRequest;

    @SerializedName("scar")
    public Boolean isScarRequest;

    @SerializedName("sp")
    public boolean isSpeakerPhoneOn;

    @SerializedName("isi")
    public Boolean isSwipeableInterstitial;

    @SerializedName("test_request")
    public boolean isTestRequest;

    @SerializedName("kw")
    public ArrayList<String> keywords;

    @SerializedName("hl")
    public String languageCode;

    @SerializedName("hl_list")
    public final ArrayList<String> languageCodeList;

    @SerializedName("linked_device")
    public int linkedDevice;

    @SerializedName("l_signals")
    public JsonObject localSignals;

    @SerializedName("d_imp_hdr")
    public boolean manualImpressionsEnabled;

    @SerializedName("mv")
    public String marketVersion;

    @SerializedName(RequestConfiguration.MAX_AD_CONTENT_RATING_KEY)
    public String maxAdContentRating;

    @SerializedName("muv_max")
    public Integer maxMusicVolume;

    @SerializedName("max_shd_s")
    public Integer maxScreenHoldDurationSeconds;

    @SerializedName("max_h")
    public Integer maxSlotHeight;

    @SerializedName("max_w")
    public Integer maxSlotWidth;

    @SerializedName("muv_min")
    public Integer minMusicVolume;

    @SerializedName("sz")
    public String multipleAdSizeString;

    @SerializedName("muv")
    public int musicVolume;

    @SerializedName("muv_percent")
    public Double musicVolumePercent;

    @SerializedName("native_custom_templates")
    public List<String> nativeCustomTemplates;

    @SerializedName("native_media_orientation")
    public String nativeMediaOrientation;

    @SerializedName("native_templates")
    public List<String> nativeTemplates;

    @SerializedName("native_version")
    public Integer nativeVersion;

    @SerializedName("neighboring_content_urls")
    public Set<String> neighboringContentUrls;

    @SerializedName("cnt")
    public Integer networkTypeCoarse;

    @SerializedName("gnt")
    public Integer networkTypeFine;

    @SerializedName("max_num_ads")
    public Integer numberOfAdsRequested;

    @SerializedName("nrwv")
    public Integer numberOfRegisteredWebViews;

    @SerializedName("client_omid_p")
    public String omidPartnerName;

    @SerializedName("omid_v")
    public String omidVersion;

    @SerializedName("u_so")
    public String orientation;

    @SerializedName("osver")
    public String osVersion;

    @SerializedName("pn")
    public String packageName;

    @SerializedName("parent_ad_config")
    public ParentAdConfig parentAdConfig;

    @SerializedName("parent_common_config")
    public ParentCommonConfig parentCommonConfig;

    @SerializedName("pcr")
    public Boolean persistentCacheRequest;

    @SerializedName("pii")
    public final PersonallyIdentifiableInformation personallyIdentifiableInformation;

    @SerializedName("phone_orientation")
    public Integer phoneOrientation;

    @SerializedName("pt")
    public Integer phoneType;

    @SerializedName("p_signals")
    public Map<String, String> preProcessedSignals;

    @SerializedName("ppt_p13n")
    public Integer publisherPrivacyPersonalizationState;

    @SerializedName("ppid")
    public String publisherProvidedId;

    @SerializedName("quality_signals")
    public QualitySignals qualitySignals;

    @SerializedName("rtb")
    public String realTimeBiddingSignals;
    private List<m83> realTimeBiddingSignalsObject;

    @SerializedName("request_agent")
    public String requestAgent;

    @SerializedName("request_id")
    public String requestId;

    @SerializedName("risd")
    public Integer requestServerData;

    @SerializedName("start_signals_timestamp")
    public long requestTimeMilliseconds;

    @SerializedName("rafmt")
    public String responsiveAutoFormat;

    @SerializedName("rm")
    public int ringerMode;

    @SerializedName("riv")
    public int ringerVolume;

    @SerializedName("rc_bl")
    public Integer roundedCornerBottomLeftDip;

    @SerializedName("rc_br")
    public Integer roundedCornerBottomRightDip;

    @SerializedName("rc_tl")
    public Integer roundedCornerTopLeftDip;

    @SerializedName("rc_tr")
    public Integer roundedCornerTopRightDip;

    @SerializedName("sam_b")
    public Integer safeAreaMarginBottomDip;

    @SerializedName("sam_l")
    public Integer safeAreaMarginLeftDip;

    @SerializedName("sam_r")
    public Integer safeAreaMarginRightDip;

    @SerializedName("sam_t")
    public Integer safeAreaMarginTopDip;

    @SerializedName("u_sd")
    public float screenDensity;

    @SerializedName("sh")
    public int screenHeight;

    @SerializedName("u_h")
    public int screenHeightDip;

    @SerializedName("sw")
    public int screenWidth;

    @SerializedName("u_w")
    public int screenWidthDip;

    @SerializedName("sdk_env")
    public final SdkEnvironment sdkEnvironment;

    @SerializedName(TapjoyConstants.TJC_SESSION_ID)
    public String sessionId;

    @SerializedName("shared_pref")
    public Bundle sharedPreferenceSignals;

    @SerializedName("collect_response_logs")
    public Boolean shouldCollectAdResponseLogs;

    @SerializedName("signal_type")
    public String signalType;

    @SerializedName("submodel")
    public String submodel;

    @SerializedName("tfat")
    public Integer tagForAgeTreatment;

    @SerializedName("tag_for_child_directed_treatment")
    public int tagForChildDirectedTreatment;

    @SerializedName("tag_for_under_age_of_consent")
    public int tagForUnderAgeOfConsent;

    @SerializedName("target_api")
    public Integer targetApi;

    @SerializedName("test_mode")
    public int testMode;

    @SerializedName("cldut")
    public long timeSinceCldUpdate;

    @SerializedName("tsi")
    private Long timeSinceSdkInitMs;

    @SerializedName("support_transparent_background")
    public Boolean transparentBackgroundSupported;

    @SerializedName("uses_media_view")
    public Boolean usesMediaView;

    @SerializedName("vc")
    public Integer versionCode;

    @SerializedName("vnm")
    public String versionName;

    @SerializedName(MimeTypes.BASE_TYPE_VIDEO)
    public VideoOptionsSignal videoOptionsSignal;

    /* synthetic */ Signals() {
        this("0", new ArrayList(), false, null, null, null, null, null, 0.0f, 0, 0, 0, 0, null, "", null, null, 0L, null, null, null, null, null, null, null, null, null, 0, null, null, false, false, null, null, null, null, null, 0, null, null, "", new ArrayList(), new LinkedHashMap(), null, new ArrayList(), new PersonallyIdentifiableInformation(0), null, 0, false, false, 0, null, null, null, 0, 0, 0.0f, false, new DeviceSignals(0), 0L, null, null, null, null, new Bundle(), null, null, null, 0, 0, null, null, null, null, null, "", null, null, null, null, null, null, null, null, null, null, null, null, null, "", false, true, null, null, null, new SdkEnvironment(0), null, null, null, null, null, false, null, null, new ArrayList(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
    }

    private Signals(String str, ArrayList arrayList, boolean z, String str2, Boolean bool, String str3, String str4, String str5, float f, int i, int i2, int i3, int i4, String str6, String str7, Boolean bool2, Boolean bool3, long j, ArrayList arrayList2, Integer num, Integer num2, Integer num3, Integer num4, Integer num5, Integer num6, Integer num7, Integer num8, int i5, Integer num9, JsonObject jsonObject, boolean z2, boolean z3, String str8, String str9, Set set, Map map, String str10, int i6, String str11, String str12, String str13, ArrayList arrayList3, Map map2, Boolean bool4, ArrayList arrayList4, PersonallyIdentifiableInformation personallyIdentifiableInformation, QualitySignals qualitySignals, int i7, boolean z4, boolean z5, int i8, Integer num10, Integer num11, Double d, int i9, int i10, float f2, boolean z6, DeviceSignals deviceSignals, long j2, String str14, JsonArray jsonArray, String str15, JsonObject jsonObject2, Bundle bundle, String str16, String str17, Boolean bool5, int i11, int i12, String str18, Integer num12, String str19, String str20, String str21, String str22, Integer num13, String str23, String str24, String str25, String str26, String str27, List list, String str28, String str29, String str30, String str31, String str32, String str33, String str34, boolean z7, boolean z8, String str35, Integer num14, String str36, SdkEnvironment sdkEnvironment, Boolean bool6, Boolean bool7, String str37, String str38, Boolean bool8, boolean z9, String str39, String str40, ArrayList arrayList5, String str41, String str42, String str43, Boolean bool9, Integer num15, String str44, String str45, Integer num16, Integer num17, Integer num18, String str46, Boolean bool10, String str47, AdUnitQualitySignals adUnitQualitySignals, Bundle bundle2, Integer num19, List list2, List list3, Boolean bool11, String str48, Boolean bool12, Boolean bool13, Integer num20, Boolean bool14, VideoOptionsSignal videoOptionsSignal, Boolean bool15, Integer num21, Integer num22, Boolean bool16, Boolean bool17, Boolean bool18, Integer num23, String str49, String str50, Boolean bool19, String str51, String str52, String str53, Boolean bool20, Integer num24, Integer num25, Map map3, Boolean bool21, Integer num26, JsonObject jsonObject3, String str54, Boolean bool22, Integer num27, ParentAdConfig parentAdConfig, Map map4, Integer num28, ClientRequestBuildingData clientRequestBuildingData, ParentCommonConfig parentCommonConfig, Long l, Integer num29, Boolean bool23, Boolean bool24, Integer num30, Integer num31, Integer num32, Boolean bool25, Boolean bool26, String str55, Long l2) {
        this.adIdPermission = str;
        this.adSizeArray = arrayList;
        this.isGreaterThanMaxAllowedBannerSize = z;
        this.responsiveAutoFormat = str2;
        this.adaptiveSlot = bool;
        this.format = str3;
        this.fluidType = str4;
        this.multipleAdSizeString = str5;
        this.screenDensity = f;
        this.screenWidth = i;
        this.screenHeight = i2;
        this.screenWidthDip = i3;
        this.screenHeightDip = i4;
        this.orientation = str6;
        this.adUnitId = str7;
        this.isRewarded = bool2;
        this.isRewardedInterstitial = bool3;
        this.requestTimeMilliseconds = j;
        this.keywords = arrayList2;
        this.safeAreaMarginLeftDip = num;
        this.safeAreaMarginTopDip = num2;
        this.safeAreaMarginRightDip = num3;
        this.safeAreaMarginBottomDip = num4;
        this.roundedCornerTopLeftDip = num5;
        this.roundedCornerTopRightDip = num6;
        this.roundedCornerBottomLeftDip = num7;
        this.roundedCornerBottomRightDip = num8;
        this.tagForChildDirectedTreatment = i5;
        this.tagForAgeTreatment = num9;
        this.csrbEcoData = jsonObject;
        this.isTestRequest = z2;
        this.manualImpressionsEnabled = z3;
        this.publisherProvidedId = str8;
        this.contentUrl = str9;
        this.neighboringContentUrls = set;
        this.customTargeting = map;
        this.requestAgent = str10;
        this.tagForUnderAgeOfConsent = i6;
        this.maxAdContentRating = str11;
        this.adResponseEncryptionKey = str12;
        this.adShieldSignal = str13;
        this.adTypes = arrayList3;
        this.adapterVersionData = map2;
        this.appSwitched = bool4;
        this.grantedPermissions = arrayList4;
        this.personallyIdentifiableInformation = personallyIdentifiableInformation;
        this.qualitySignals = qualitySignals;
        this.audioMode = i7;
        this.isMusicActive = z4;
        this.isSpeakerPhoneOn = z5;
        this.musicVolume = i8;
        this.minMusicVolume = num10;
        this.maxMusicVolume = num11;
        this.musicVolumePercent = d;
        this.ringerMode = i9;
        this.ringerVolume = i10;
        this.appVolume = f2;
        this.isAppMuted = z6;
        this.deviceSignals = deviceSignals;
        this.timeSinceCldUpdate = j2;
        this.adUnitRequestSignals = str14;
        this.adUnitRequestSignalsObject = jsonArray;
        this.commonCldSignals = str15;
        this.commonCldSignalsObject = jsonObject2;
        this.sharedPreferenceSignals = bundle;
        this.creativeToken = str16;
        this.debugSignalsEnabled = str17;
        this.shouldCollectAdResponseLogs = bool5;
        this.testMode = i11;
        this.linkedDevice = i12;
        this.inspectorExtras = str18;
        this.requestServerData = num12;
        this.omidVersion = str19;
        this.clientOmidVersion = str20;
        this.omidPartnerName = str21;
        this.packageName = str22;
        this.versionCode = num13;
        this.appName = str23;
        this.versionName = str24;
        this.displayLabel = str25;
        this.requestId = str26;
        this.realTimeBiddingSignals = str27;
        this.realTimeBiddingSignalsObject = list;
        this.gmpAppId = str28;
        this.appInstanceId = str29;
        this.adEventId = str30;
        this.appIdOrigin = str31;
        this.appWebPropertyCode = str32;
        this.applicationCode = str33;
        this.afmaVersion = str34;
        this.isNonagon = z7;
        this.isDecagon = z8;
        this.additionalCapabilities = str35;
        this.targetApi = num14;
        this.granularVersion = str36;
        this.sdkEnvironment = sdkEnvironment;
        this.canOpenGeo = bool6;
        this.canOpenHttp = bool7;
        this.countryCode = str37;
        this.deviceCountryCode = str38;
        this.isEmulator = bool8;
        this.isLatchskyDevice = z9;
        this.languageCode = str39;
        this.clientLanguageCode = str40;
        this.languageCodeList = arrayList5;
        this.deviceLanguageCode = str41;
        this.marketVersion = str42;
        this.submodel = str43;
        this.isBattlestarDevice = bool9;
        this.buildApiLevel = num15;
        this.osVersion = str44;
        this.carrierCode = str45;
        this.networkTypeCoarse = num16;
        this.networkTypeFine = num17;
        this.phoneType = num18;
        this.experimentIds = str46;
        this.transparentBackgroundSupported = bool10;
        this.sessionId = str47;
        this.adUnitQualitySignals = adUnitQualitySignals;
        this.googleExtrasBundle = bundle2;
        this.nativeVersion = num19;
        this.nativeTemplates = list2;
        this.nativeCustomTemplates = list3;
        this.enableNativeMediaOrientation = bool11;
        this.nativeMediaOrientation = str48;
        this.customMuteThisAdRequested = bool12;
        this.customClickGestureEnabled = bool13;
        this.customClickGestureDirection = num20;
        this.customClickGestureAllowTaps = bool14;
        this.videoOptionsSignal = videoOptionsSignal;
        this.isImageLoadingDisabled = bool15;
        this.adChoicesPlacement = num21;
        this.numberOfRegisteredWebViews = num22;
        this.isBannerRefreshRequest = bool16;
        this.isIconAdRequest = bool17;
        this.isPictureInPictureAdRequest = bool18;
        this.iconAdPlacement = num23;
        this.excludedAppIds = str49;
        this.correlator = str50;
        this.usesMediaView = bool19;
        this.installerPackage = str51;
        this.initiatorPackage = str52;
        this.signalType = str53;
        this.isScarRequest = bool20;
        this.publisherPrivacyPersonalizationState = num24;
        this.isHsdpSupported = num25;
        this.preProcessedSignals = map3;
        this.isPrefetchRequest = bool21;
        this.displayCount = num26;
        this.localSignals = jsonObject3;
        this.holdingHand = str54;
        this.isDeviceHeld = bool22;
        this.phoneOrientation = num27;
        this.parentAdConfig = parentAdConfig;
        this.inMemorySdkCoreData = map4;
        this.numberOfAdsRequested = num28;
        this.clientRequestBuildingData = clientRequestBuildingData;
        this.parentCommonConfig = parentCommonConfig;
        this.timeSinceSdkInitMs = l;
        this.isS2SRecursiveRequest = num29;
        this.isAdapterInitConfigSet = bool23;
        this.isSwipeableInterstitial = bool24;
        this.maxScreenHoldDurationSeconds = num30;
        this.maxSlotWidth = num31;
        this.maxSlotHeight = num32;
        this.persistentCacheRequest = bool25;
        this.crossProcessRequest = bool26;
        this.clientEoid = str55;
        this.clientEoidTimestampInMs = l2;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final List getRealTimeBiddingSignalsObject() {
        return this.realTimeBiddingSignalsObject;
    }

    public final void a(Long l) {
        this.timeSinceSdkInitMs = l;
    }

    public final void a(List list) {
        this.realTimeBiddingSignalsObject = list;
    }

    public final void b() {
        this.isAdapterInitConfigSet = Boolean.TRUE;
    }

    public final void c() {
        this.isS2SRecursiveRequest = 1;
    }
}
