package com.ironsource;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import p005kotlin.annotation.AnnotationRetention;
import p005kotlin.annotation.AnnotationTarget;

/* JADX INFO: renamed from: com.ironsource.xb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
@Target({ElementType.TYPE, ElementType.METHOD, ElementType.PARAMETER, ElementType.CONSTRUCTOR})
@p005kotlin.annotation.Target(allowedTargets = {AnnotationTarget.CLASS, AnnotationTarget.FUNCTION, AnnotationTarget.PROPERTY_GETTER, AnnotationTarget.PROPERTY_SETTER, AnnotationTarget.CONSTRUCTOR, AnnotationTarget.VALUE_PARAMETER})
@Retention(RetentionPolicy.CLASS)
@p005kotlin.annotation.Retention(AnnotationRetention.BINARY)
public @interface InterfaceC3918xb {
}
