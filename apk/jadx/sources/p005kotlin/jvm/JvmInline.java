package p005kotlin.jvm;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import p005kotlin.Metadata;
import p005kotlin.annotation.AnnotationRetention;
import p005kotlin.annotation.AnnotationTarget;
import p005kotlin.annotation.MustBeDocumented;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets/audience_network/classes.dex
  classes5.dex
 */
/* JADX INFO: compiled from: JvmPlatformAnnotations.kt */
/* JADX INFO: loaded from: classes5.dex */
@Target({ElementType.TYPE})
@p005kotlin.annotation.Target(allowedTargets = {AnnotationTarget.CLASS})
@Retention(RetentionPolicy.RUNTIME)
@p005kotlin.annotation.Retention(AnnotationRetention.RUNTIME)
@MustBeDocumented
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Lkotlin/jvm/JvmInline;", "", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Documented
public @interface JvmInline {
}
