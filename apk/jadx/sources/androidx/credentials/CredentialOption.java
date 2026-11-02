package androidx.credentials;

import android.content.ComponentName;
import android.os.Bundle;
import androidx.credentials.internal.FrameworkClassParsingException;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Set;
import p005kotlin.Metadata;
import p005kotlin.annotation.AnnotationRetention;
import p005kotlin.annotation.AnnotationTarget;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CredentialOption.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\b&\u0018\u0000 \u001a2\u00020\u0001:\u0002\u001a\u001bBE\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0006\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fR\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\t\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0014R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001c"}, d2 = {"Landroidx/credentials/CredentialOption;", "", "type", "", "requestData", "Landroid/os/Bundle;", "candidateQueryData", "isSystemProviderRequired", "", "isAutoSelectAllowed", "allowedProviders", "", "Landroid/content/ComponentName;", "typePriorityHint", "", "(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZZLjava/util/Set;I)V", "getAllowedProviders", "()Ljava/util/Set;", "getCandidateQueryData", "()Landroid/os/Bundle;", "()Z", "getRequestData", "getType", "()Ljava/lang/String;", "getTypePriorityHint", "()I", "Companion", "PriorityHints", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class CredentialOption {
    public static final String BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED = "androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED";
    public static final String BUNDLE_KEY_TYPE_PRIORITY_VALUE = "androidx.credentials.BUNDLE_KEY_TYPE_PRIORITY_VALUE";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int PRIORITY_DEFAULT = 2000;
    public static final int PRIORITY_OIDC_OR_SIMILAR = 500;
    public static final int PRIORITY_PASSKEY_OR_SIMILAR = 100;
    public static final int PRIORITY_PASSWORD_OR_SIMILAR = 1000;
    private final Set<ComponentName> allowedProviders;
    private final Bundle candidateQueryData;
    private final boolean isAutoSelectAllowed;
    private final boolean isSystemProviderRequired;
    private final Bundle requestData;
    private final String type;
    private final int typePriorityHint;

    /* JADX INFO: compiled from: CredentialOption.kt */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0007J6\u0010\u000b\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016H\u0007J\u0015\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u0011H\u0000¢\u0006\u0002\b\u001aR\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Landroidx/credentials/CredentialOption$Companion;", "", "()V", "BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED", "", "BUNDLE_KEY_TYPE_PRIORITY_VALUE", "PRIORITY_DEFAULT", "", "PRIORITY_OIDC_OR_SIMILAR", "PRIORITY_PASSKEY_OR_SIMILAR", "PRIORITY_PASSWORD_OR_SIMILAR", "createFrom", "Landroidx/credentials/CredentialOption;", "option", "Landroid/credentials/CredentialOption;", "type", "requestData", "Landroid/os/Bundle;", "candidateQueryData", "requireSystemProvider", "", "allowedProviders", "", "Landroid/content/ComponentName;", "extractAutoSelectValue", "data", "extractAutoSelectValue$credentials_release", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final CredentialOption createFrom(android.credentials.CredentialOption option) {
            Intrinsics.checkNotNullParameter(option, "option");
            String type = option.getType();
            Intrinsics.checkNotNullExpressionValue(type, "option.type");
            Bundle credentialRetrievalData = option.getCredentialRetrievalData();
            Intrinsics.checkNotNullExpressionValue(credentialRetrievalData, "option.credentialRetrievalData");
            Bundle candidateQueryData = option.getCandidateQueryData();
            Intrinsics.checkNotNullExpressionValue(candidateQueryData, "option.candidateQueryData");
            boolean zIsSystemProviderRequired = option.isSystemProviderRequired();
            Set<ComponentName> allowedProviders = option.getAllowedProviders();
            Intrinsics.checkNotNullExpressionValue(allowedProviders, "option.allowedProviders");
            return createFrom(type, credentialRetrievalData, candidateQueryData, zIsSystemProviderRequired, allowedProviders);
        }

        @JvmStatic
        public final CredentialOption createFrom(String type, Bundle requestData, Bundle candidateQueryData, boolean requireSystemProvider, Set<ComponentName> allowedProviders) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(requestData, "requestData");
            Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
            Intrinsics.checkNotNullParameter(allowedProviders, "allowedProviders");
            try {
                int iHashCode = type.hashCode();
                if (iHashCode != -1678407252) {
                    if (iHashCode != -543568185) {
                        if (iHashCode == -95037569 && type.equals(PublicKeyCredential.TYPE_PUBLIC_KEY_CREDENTIAL)) {
                            String string = requestData.getString(PublicKeyCredential.BUNDLE_KEY_SUBTYPE);
                            if (string != null && string.hashCode() == -613058807 && string.equals(GetPublicKeyCredentialOption.BUNDLE_VALUE_SUBTYPE_GET_PUBLIC_KEY_CREDENTIAL_OPTION)) {
                                return GetPublicKeyCredentialOption.INSTANCE.createFrom$credentials_release(requestData, allowedProviders, candidateQueryData);
                            }
                            throw new FrameworkClassParsingException();
                        }
                    } else if (type.equals(PasswordCredential.TYPE_PASSWORD_CREDENTIAL)) {
                        return GetPasswordOption.INSTANCE.createFrom$credentials_release(requestData, allowedProviders, candidateQueryData);
                    }
                } else if (type.equals(DigitalCredential.TYPE_DIGITAL_CREDENTIAL)) {
                    return GetDigitalCredentialOption.INSTANCE.createFrom$credentials_release(requestData, candidateQueryData, requireSystemProvider, allowedProviders);
                }
                throw new FrameworkClassParsingException();
            } catch (FrameworkClassParsingException unused) {
                return new GetCustomCredentialOption(requestData, type, candidateQueryData, requireSystemProvider, requestData.getBoolean("androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED", false), allowedProviders, requestData.getInt(CredentialOption.BUNDLE_KEY_TYPE_PRIORITY_VALUE, 2000));
            }
        }

        public final boolean extractAutoSelectValue$credentials_release(Bundle data) {
            Intrinsics.checkNotNullParameter(data, "data");
            return data.getBoolean("androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED");
        }
    }

    /* JADX INFO: compiled from: CredentialOption.kt */
    @Target({ElementType.PARAMETER, ElementType.TYPE_USE})
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Landroidx/credentials/CredentialOption$PriorityHints;", "", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @p005kotlin.annotation.Target(allowedTargets = {AnnotationTarget.PROPERTY, AnnotationTarget.VALUE_PARAMETER, AnnotationTarget.TYPE})
    @Retention(RetentionPolicy.SOURCE)
    @p005kotlin.annotation.Retention(AnnotationRetention.SOURCE)
    public @interface PriorityHints {
    }

    public CredentialOption(String type, Bundle requestData, Bundle candidateQueryData, boolean z, boolean z2, Set<ComponentName> allowedProviders, int i) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(requestData, "requestData");
        Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
        Intrinsics.checkNotNullParameter(allowedProviders, "allowedProviders");
        this.type = type;
        this.requestData = requestData;
        this.candidateQueryData = candidateQueryData;
        this.isSystemProviderRequired = z;
        this.isAutoSelectAllowed = z2;
        this.allowedProviders = allowedProviders;
        this.typePriorityHint = i;
        requestData.putBoolean("androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED", z2);
        candidateQueryData.putBoolean("androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED", z2);
        requestData.putInt(BUNDLE_KEY_TYPE_PRIORITY_VALUE, i);
        candidateQueryData.putInt(BUNDLE_KEY_TYPE_PRIORITY_VALUE, i);
    }

    @JvmStatic
    public static final CredentialOption createFrom(android.credentials.CredentialOption credentialOption) {
        return INSTANCE.createFrom(credentialOption);
    }

    @JvmStatic
    public static final CredentialOption createFrom(String str, Bundle bundle, Bundle bundle2, boolean z, Set<ComponentName> set) {
        return INSTANCE.createFrom(str, bundle, bundle2, z, set);
    }

    public final Set<ComponentName> getAllowedProviders() {
        return this.allowedProviders;
    }

    public final Bundle getCandidateQueryData() {
        return this.candidateQueryData;
    }

    public final Bundle getRequestData() {
        return this.requestData;
    }

    public final String getType() {
        return this.type;
    }

    public final int getTypePriorityHint() {
        return this.typePriorityHint;
    }

    /* JADX INFO: renamed from: isAutoSelectAllowed, reason: from getter */
    public final boolean getIsAutoSelectAllowed() {
        return this.isAutoSelectAllowed;
    }

    /* JADX INFO: renamed from: isSystemProviderRequired, reason: from getter */
    public final boolean getIsSystemProviderRequired() {
        return this.isSystemProviderRequired;
    }
}
