package com.unity.androidnotifications;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.tapjoy.TJAdUnitConstants;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes5.dex */
class UnityNotificationUtilities {
    private static final int INTENT_SERIALIZATION_VERSION = 0;
    private static final int NOTIFICATION_SERIALIZATION_VERSION = 3;
    static final String SAVED_NOTIFICATION_FALLBACK_KEY = "fallback.data";
    static final String SAVED_NOTIFICATION_PRIMARY_KEY = "data";
    static final byte[] UNITY_MAGIC_NUMBER = {85, 77, 78, 78};
    private static final byte[] UNITY_MAGIC_NUMBER_PARCELLED = {85, 77, 78, 80};

    UnityNotificationUtilities() {
    }

    /* JADX WARN: Failed to analyze thrown exceptions
    java.util.ConcurrentModificationException
    	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1013)
    	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:967)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:130)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
     */
    protected static Object deserializeNotification(Context context, SharedPreferences sharedPreferences) {
        String string = sharedPreferences.getString("data", "");
        if (string != null && string.length() > 0) {
            Object objDeserializeNotification = deserializeNotification(context, Base64.decode(string, 0));
            if (objDeserializeNotification != null) {
                return objDeserializeNotification;
            }
            String string2 = sharedPreferences.getString(SAVED_NOTIFICATION_FALLBACK_KEY, "");
            if (string2 != null && string2.length() > 0) {
                return deserializeNotification(context, Base64.decode(string2, 0));
            }
        }
        return null;
    }

    private static Object deserializeNotification(Context context, byte[] bArr) {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        DataInputStream dataInputStream = new DataInputStream(byteArrayInputStream);
        Notification notificationDeserializeNotificationParcelable = deserializeNotificationParcelable(dataInputStream);
        if (notificationDeserializeNotificationParcelable != null) {
            return notificationDeserializeNotificationParcelable;
        }
        byteArrayInputStream.reset();
        Notification.Builder builderDeserializeNotificationCustom = deserializeNotificationCustom(context, dataInputStream);
        return builderDeserializeNotificationCustom == null ? deserializedFromOldIntent(context, bArr) : builderDeserializeNotificationCustom;
    }

    /* JADX WARN: Code duplicated, block: B:69:0x01fc A[Catch: OutOfMemoryError -> 0x0242, Exception -> 0x0244, TryCatch #6 {Exception -> 0x0244, OutOfMemoryError -> 0x0242, blocks: (B:39:0x0147, B:41:0x0151, B:43:0x0158, B:45:0x017e, B:47:0x0185, B:49:0x0193, B:60:0x01d8, B:62:0x01dd, B:64:0x01e2, B:69:0x01fc, B:71:0x0203, B:72:0x0208, B:74:0x0214, B:76:0x021a, B:77:0x021f, B:79:0x022b, B:81:0x0231, B:83:0x0238, B:66:0x01f1, B:50:0x0199, B:52:0x01b0, B:55:0x01bd, B:57:0x01c6, B:58:0x01cd), top: B:107:0x0147 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x0203 A[Catch: OutOfMemoryError -> 0x0242, Exception -> 0x0244, TryCatch #6 {Exception -> 0x0244, OutOfMemoryError -> 0x0242, blocks: (B:39:0x0147, B:41:0x0151, B:43:0x0158, B:45:0x017e, B:47:0x0185, B:49:0x0193, B:60:0x01d8, B:62:0x01dd, B:64:0x01e2, B:69:0x01fc, B:71:0x0203, B:72:0x0208, B:74:0x0214, B:76:0x021a, B:77:0x021f, B:79:0x022b, B:81:0x0231, B:83:0x0238, B:66:0x01f1, B:50:0x0199, B:52:0x01b0, B:55:0x01bd, B:57:0x01c6, B:58:0x01cd), top: B:107:0x0147 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x0238 A[Catch: OutOfMemoryError -> 0x0242, Exception -> 0x0244, TRY_LEAVE, TryCatch #6 {Exception -> 0x0244, OutOfMemoryError -> 0x0242, blocks: (B:39:0x0147, B:41:0x0151, B:43:0x0158, B:45:0x017e, B:47:0x0185, B:49:0x0193, B:60:0x01d8, B:62:0x01dd, B:64:0x01e2, B:69:0x01fc, B:71:0x0203, B:72:0x0208, B:74:0x0214, B:76:0x021a, B:77:0x021f, B:79:0x022b, B:81:0x0231, B:83:0x0238, B:66:0x01f1, B:50:0x0199, B:52:0x01b0, B:55:0x01bd, B:57:0x01c6, B:58:0x01cd), top: B:107:0x0147 }] */
    /* JADX WARN: Multi-variable type inference failed */
    private static Notification.Builder deserializeNotificationCustom(Context context, DataInputStream dataInputStream) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        Notification.Builder builder;
        Bundle bundle;
        boolean z;
        String str8;
        String str9;
        String str10;
        String strDeserializeString;
        String strDeserializeString2;
        int i;
        boolean z2;
        String strDeserializeString3;
        String strDeserializeString4;
        long j;
        long j2;
        String strDeserializeString5;
        boolean z3;
        String string;
        String str11;
        String str12;
        boolean z4;
        Notification.Builder builder2;
        String str13;
        String str14 = "Failed to deserialize notification";
        String str15 = "UnityNotifications";
        try {
            try {
                try {
                    if (!readAndCheckMagicNumber(dataInputStream, UNITY_MAGIC_NUMBER)) {
                        return null;
                    }
                    int i2 = dataInputStream.readInt();
                    if (i2 < 0 || i2 > 3) {
                        return null;
                    }
                    if (i2 < 2) {
                        try {
                            bundle = (Bundle) deserializeParcelable(dataInputStream);
                        } catch (OutOfMemoryError e) {
                            e = e;
                            str6 = "Failed to deserialize notification";
                            str7 = "UnityNotifications";
                            str5 = null;
                            Log.e(str7, str6, e);
                            builder = str5;
                            return builder;
                        }
                    } else {
                        bundle = null;
                    }
                    if (bundle == null) {
                        i = dataInputStream.readInt();
                        strDeserializeString3 = deserializeString(dataInputStream);
                        strDeserializeString4 = deserializeString(dataInputStream);
                        String strDeserializeString6 = deserializeString(dataInputStream);
                        String strDeserializeString7 = deserializeString(dataInputStream);
                        j = dataInputStream.readLong();
                        j2 = dataInputStream.readLong();
                        strDeserializeString5 = deserializeString(dataInputStream);
                        z3 = dataInputStream.readBoolean();
                        z = dataInputStream.readBoolean();
                        string = deserializeString(dataInputStream);
                        z4 = i2 > 0 ? dataInputStream.readBoolean() : true;
                        if (i2 >= 3) {
                            String strDeserializeString8 = deserializeString(dataInputStream);
                            if (strDeserializeString8 == null || strDeserializeString8.length() <= 0) {
                                str9 = strDeserializeString8;
                                str8 = null;
                                str10 = null;
                            } else {
                                String strDeserializeString9 = deserializeString(dataInputStream);
                                String strDeserializeString10 = deserializeString(dataInputStream);
                                strDeserializeString = deserializeString(dataInputStream);
                                strDeserializeString2 = deserializeString(dataInputStream);
                                z2 = dataInputStream.readBoolean();
                                str9 = strDeserializeString8;
                                str8 = strDeserializeString9;
                                str10 = strDeserializeString10;
                                str13 = null;
                            }
                            str11 = strDeserializeString6;
                            str12 = strDeserializeString7;
                            str4 = str13;
                        } else {
                            str8 = null;
                            str9 = null;
                            str10 = null;
                        }
                        strDeserializeString = str10;
                        strDeserializeString2 = strDeserializeString;
                        z2 = false;
                        str13 = strDeserializeString2;
                        str11 = strDeserializeString6;
                        str12 = strDeserializeString7;
                        str4 = str13;
                    } else {
                        String string2 = bundle.getString(NotificationCompat.EXTRA_TITLE);
                        String string3 = bundle.getString(NotificationCompat.EXTRA_TEXT);
                        String string4 = bundle.getString(UnityNotificationManager.KEY_SMALL_ICON);
                        String string5 = bundle.getString(UnityNotificationManager.KEY_LARGE_ICON);
                        long j3 = bundle.getLong(UnityNotificationManager.KEY_FIRE_TIME, -1L);
                        long j4 = bundle.getLong(UnityNotificationManager.KEY_REPEAT_INTERVAL, -1L);
                        String string6 = bundle.getString(NotificationCompat.EXTRA_BIG_TEXT);
                        boolean z5 = bundle.getBoolean(NotificationCompat.EXTRA_SHOW_CHRONOMETER, false);
                        z = bundle.getBoolean(NotificationCompat.EXTRA_SHOW_WHEN, false);
                        str4 = null;
                        str8 = null;
                        str9 = null;
                        str10 = null;
                        strDeserializeString = null;
                        strDeserializeString2 = null;
                        i = 0;
                        z2 = false;
                        strDeserializeString3 = string2;
                        strDeserializeString4 = string3;
                        j = j3;
                        j2 = j4;
                        strDeserializeString5 = string6;
                        z3 = z5;
                        string = bundle.getString("data");
                        str14 = "Failed to deserialize notification";
                        str15 = "UnityNotifications";
                        str11 = string4;
                        str12 = string5;
                        z4 = true;
                    }
                    try {
                        String strDeserializeString11 = deserializeString(dataInputStream);
                        boolean z6 = dataInputStream.readBoolean();
                        int i3 = z6 ? dataInputStream.readInt() : 0;
                        boolean z7 = z3;
                        int i4 = dataInputStream.readInt();
                        boolean z8 = dataInputStream.readBoolean();
                        String strDeserializeString12 = deserializeString(dataInputStream);
                        boolean z9 = dataInputStream.readBoolean();
                        int i5 = dataInputStream.readInt();
                        String strDeserializeString13 = deserializeString(dataInputStream);
                        long j5 = z ? dataInputStream.readLong() : 0L;
                        UnityNotificationManager notificationManagerImpl = UnityNotificationManager.getNotificationManagerImpl(context);
                        Notification.Builder builderCreateNotificationBuilder = notificationManagerImpl.createNotificationBuilder(strDeserializeString11);
                        if (bundle != null) {
                            builderCreateNotificationBuilder.setExtras(bundle);
                        } else {
                            builderCreateNotificationBuilder.getExtras().putInt("id", i);
                            UnityNotificationManager.setNotificationIcon(builderCreateNotificationBuilder, UnityNotificationManager.KEY_SMALL_ICON, str11);
                            UnityNotificationManager.setNotificationIcon(builderCreateNotificationBuilder, UnityNotificationManager.KEY_LARGE_ICON, str12);
                            long j6 = j;
                            if (j6 != r13) {
                                builderCreateNotificationBuilder.getExtras().putLong(UnityNotificationManager.KEY_FIRE_TIME, j6);
                            }
                            long j7 = j2;
                            if (j7 != -1) {
                                builderCreateNotificationBuilder.getExtras().putLong(UnityNotificationManager.KEY_REPEAT_INTERVAL, j7);
                            }
                            if (string != null) {
                                builderCreateNotificationBuilder.getExtras().putString("data", string);
                            }
                            builderCreateNotificationBuilder.getExtras().putBoolean(UnityNotificationManager.KEY_SHOW_IN_FOREGROUND, z4);
                        }
                        if (strDeserializeString3 != null) {
                            builderCreateNotificationBuilder.setContentTitle(strDeserializeString3);
                        }
                        if (strDeserializeString4 != null) {
                            builderCreateNotificationBuilder.setContentText(strDeserializeString4);
                        }
                        if (strDeserializeString5 == null) {
                            if (str9 != null) {
                                notificationManagerImpl.setupBigPictureStyle(builderCreateNotificationBuilder, str8, str9, str10, strDeserializeString, strDeserializeString2, z2);
                                builder2 = builderCreateNotificationBuilder;
                            }
                            if (z6) {
                                UnityNotificationManager.setNotificationColor(builder2, i3);
                            }
                            if (i4 >= 0) {
                                builder2.setNumber(i4);
                            }
                            builder2.setAutoCancel(z8);
                            UnityNotificationManager.setNotificationUsesChronometer(builder2, z7);
                            if (strDeserializeString12 != null && strDeserializeString12.length() > 0) {
                                builder2.setGroup(strDeserializeString12);
                            }
                            builder2.setGroupSummary(z9);
                            UnityNotificationManager.setNotificationGroupAlertBehavior(builder2, i5);
                            if (strDeserializeString13 != null && strDeserializeString13.length() > 0) {
                                builder2.setSortKey(strDeserializeString13);
                            }
                            if (z) {
                                builder2.setShowWhen(true);
                                builder2.setWhen(j5);
                            }
                            return builder2;
                        }
                        builderCreateNotificationBuilder.setStyle(new Notification.BigTextStyle().bigText(strDeserializeString5));
                        builder2 = builderCreateNotificationBuilder;
                        if (z6) {
                            UnityNotificationManager.setNotificationColor(builder2, i3);
                        }
                        if (i4 >= 0) {
                            builder2.setNumber(i4);
                        }
                        builder2.setAutoCancel(z8);
                        UnityNotificationManager.setNotificationUsesChronometer(builder2, z7);
                        if (strDeserializeString12 != null) {
                            builder2.setGroup(strDeserializeString12);
                        }
                        builder2.setGroupSummary(z9);
                        UnityNotificationManager.setNotificationGroupAlertBehavior(builder2, i5);
                        if (strDeserializeString13 != null) {
                            builder2.setSortKey(strDeserializeString13);
                        }
                        if (z) {
                            builder2.setShowWhen(true);
                            builder2.setWhen(j5);
                        }
                        return builder2;
                    } catch (Exception e2) {
                        e = e2;
                    } catch (OutOfMemoryError e3) {
                        e = e3;
                        str6 = str14;
                        str7 = str15;
                        str5 = str4;
                        Log.e(str7, str6, e);
                        builder = str5;
                        return builder;
                    }
                } catch (Exception e4) {
                    e = e4;
                    str14 = "Failed to deserialize notification";
                    str15 = "UnityNotifications";
                    str4 = null;
                }
                str = str14;
                str2 = str15;
                str3 = str4;
            } catch (OutOfMemoryError e5) {
                e = e5;
                str14 = "Failed to deserialize notification";
                str15 = "UnityNotifications";
                str4 = null;
            }
        } catch (Exception e6) {
            e = e6;
            str = "Failed to deserialize notification";
            str2 = "UnityNotifications";
            str3 = null;
        }
        Log.e(str2, str, e);
        builder = str3;
        return builder;
    }

    /* JADX WARN: Failed to analyze thrown exceptions
    java.util.ConcurrentModificationException
    	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1013)
    	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:967)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:130)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
     */
    private static Notification deserializeNotificationParcelable(DataInputStream dataInputStream) {
        int i;
        try {
            if (readAndCheckMagicNumber(dataInputStream, UNITY_MAGIC_NUMBER_PARCELLED) && (i = dataInputStream.readInt()) >= 0 && i <= 0) {
                return (Notification) ((Intent) deserializeParcelable(dataInputStream)).getParcelableExtra(UnityNotificationManager.KEY_NOTIFICATION);
            }
            return null;
        } catch (Exception e) {
            Log.e("UnityNotifications", "Failed to deserialize notification intent", e);
            return null;
        } catch (OutOfMemoryError e2) {
            Log.e("UnityNotifications", "Failed to deserialize notification intent", e2);
            return null;
        }
    }

    private static <T extends Parcelable> T deserializeParcelable(DataInputStream dataInputStream) throws IOException {
        int i = dataInputStream.readInt();
        if (i <= 0) {
            return null;
        }
        byte[] bArr = new byte[i];
        if (dataInputStream.read(bArr) != i) {
            throw new IOException("Insufficient amount of bytes read");
        }
        try {
            Parcel parcelObtain = Parcel.obtain();
            parcelObtain.unmarshall(bArr, 0, i);
            parcelObtain.setDataPosition(0);
            Bundle bundle = (Bundle) parcelObtain.readParcelable(UnityNotificationUtilities.class.getClassLoader());
            parcelObtain.recycle();
            if (bundle != null) {
                return (T) bundle.getParcelable("obj");
            }
        } catch (Exception e) {
            Log.e("UnityNotifications", "Failed to deserialize parcelable", e);
        } catch (OutOfMemoryError e2) {
            Log.e("UnityNotifications", "Failed to deserialize parcelable", e2);
        }
        return null;
    }

    private static String deserializeString(DataInputStream dataInputStream) throws IOException {
        int i = dataInputStream.readInt();
        if (i <= 0) {
            return null;
        }
        byte[] bArr = new byte[i];
        if (dataInputStream.read(bArr) == i) {
            return new String(bArr, StandardCharsets.UTF_8);
        }
        throw new IOException("Insufficient amount of bytes read");
    }

    private static Notification.Builder deserializedFromOldIntent(Context context, byte[] bArr) {
        String str;
        String str2;
        String str3;
        String str4;
        try {
            try {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.unmarshall(bArr, 0, bArr.length);
                    parcelObtain.setDataPosition(0);
                    Bundle bundle = new Bundle();
                    bundle.readFromParcel(parcelObtain);
                    int i = bundle.getInt("id", -1);
                    String string = bundle.getString(UnityNotificationManager.KEY_CHANNEL_ID);
                    String string2 = bundle.getString("textTitle");
                    String string3 = bundle.getString("textContent");
                    String string4 = bundle.getString("smallIconStr");
                    boolean z = bundle.getBoolean("autoCancel", false);
                    boolean z2 = bundle.getBoolean("usesChronometer", false);
                    long j = bundle.getLong(UnityNotificationManager.KEY_FIRE_TIME, -1L);
                    long j2 = bundle.getLong(UnityNotificationManager.KEY_REPEAT_INTERVAL, -1L);
                    str = "Failed to deserialize old style notification";
                    try {
                        String string5 = bundle.getString("largeIconStr");
                        str4 = "UnityNotifications";
                        try {
                            int i2 = bundle.getInt(TJAdUnitConstants.String.STYLE, -1);
                            int i3 = bundle.getInt("color", 0);
                            int i4 = bundle.getInt("number", 0);
                            String string6 = bundle.getString("data");
                            String string7 = bundle.getString("group");
                            boolean z3 = bundle.getBoolean("groupSummary", false);
                            String string8 = bundle.getString("sortKey");
                            int i5 = bundle.getInt("groupAlertBehaviour", -1);
                            boolean z4 = bundle.getBoolean("showTimestamp", false);
                            Notification.Builder builderCreateNotificationBuilder = UnityNotificationManager.getNotificationManagerImpl(context).createNotificationBuilder(string);
                            builderCreateNotificationBuilder.getExtras().putInt("id", i);
                            builderCreateNotificationBuilder.setContentTitle(string2);
                            builderCreateNotificationBuilder.setContentText(string3);
                            UnityNotificationManager.setNotificationIcon(builderCreateNotificationBuilder, UnityNotificationManager.KEY_SMALL_ICON, string4);
                            builderCreateNotificationBuilder.setAutoCancel(z);
                            builderCreateNotificationBuilder.setUsesChronometer(z2);
                            builderCreateNotificationBuilder.getExtras().putLong(UnityNotificationManager.KEY_FIRE_TIME, j);
                            builderCreateNotificationBuilder.getExtras().putLong(UnityNotificationManager.KEY_REPEAT_INTERVAL, j2);
                            UnityNotificationManager.setNotificationIcon(builderCreateNotificationBuilder, UnityNotificationManager.KEY_LARGE_ICON, string5);
                            if (i2 == 2) {
                                builderCreateNotificationBuilder.setStyle(new Notification.BigTextStyle().bigText(string3));
                            }
                            if (i3 != 0) {
                                UnityNotificationManager.setNotificationColor(builderCreateNotificationBuilder, i3);
                            }
                            if (i4 >= 0) {
                                builderCreateNotificationBuilder.setNumber(i4);
                            }
                            if (string6 != null) {
                                builderCreateNotificationBuilder.getExtras().putString("data", string6);
                            }
                            if (string7 != null && string7.length() > 0) {
                                builderCreateNotificationBuilder.setGroup(string7);
                            }
                            builderCreateNotificationBuilder.setGroupSummary(z3);
                            if (string8 != null && string8.length() > 0) {
                                builderCreateNotificationBuilder.setSortKey(string8);
                            }
                            UnityNotificationManager.setNotificationGroupAlertBehavior(builderCreateNotificationBuilder, i5);
                            builderCreateNotificationBuilder.setShowWhen(z4);
                            return builderCreateNotificationBuilder;
                        } catch (Exception e) {
                            e = e;
                            str2 = str;
                            str3 = str4;
                            Log.e(str3, str2, e);
                            return null;
                        } catch (OutOfMemoryError e2) {
                            e = e2;
                            Log.e(str4, str, e);
                            return null;
                        }
                    } catch (Exception e3) {
                        e = e3;
                        str4 = "UnityNotifications";
                        str2 = str;
                        str3 = str4;
                        Log.e(str3, str2, e);
                        return null;
                    } catch (OutOfMemoryError e4) {
                        e = e4;
                        str4 = "UnityNotifications";
                        Log.e(str4, str, e);
                        return null;
                    }
                } catch (Exception e5) {
                    e = e5;
                    str = "Failed to deserialize old style notification";
                }
            } catch (Exception e6) {
                e = e6;
                str2 = "Failed to deserialize old style notification";
                str3 = "UnityNotifications";
            }
        } catch (OutOfMemoryError e7) {
            e = e7;
            str = "Failed to deserialize old style notification";
        }
    }

    protected static int findResourceIdInContextByName(Context context, String str) {
        if (str == null) {
            return 0;
        }
        try {
            Resources resources = context.getResources();
            if (resources != null) {
                int identifier = resources.getIdentifier(str, "mipmap", context.getPackageName());
                return identifier == 0 ? resources.getIdentifier(str, "drawable", context.getPackageName()) : identifier;
            }
        } catch (Resources.NotFoundException unused) {
        }
        return 0;
    }

    protected static Class<?> getOpenAppActivity(Context context) {
        try {
            try {
                PackageManager packageManager = context.getPackageManager();
                Bundle bundle = packageManager.getApplicationInfo(context.getPackageName(), 128).metaData;
                if (bundle.containsKey("custom_notification_android_activity")) {
                    try {
                        return Class.forName(bundle.getString("custom_notification_android_activity"));
                    } catch (ClassNotFoundException e) {
                        Log.e("UnityNotifications", "Specified activity class for notifications not found: " + e.getMessage());
                    }
                }
                Log.w("UnityNotifications", "No custom_notification_android_activity found, attempting to find app activity class");
                boolean z = true;
                ActivityInfo[] activityInfoArr = packageManager.getPackageInfo(context.getPackageName(), 1).activities;
                if (activityInfoArr == null) {
                    Log.e("UnityNotifications", "Could not get package activities");
                    return null;
                }
                int length = activityInfoArr.length;
                String str = null;
                int i = 0;
                boolean z2 = false;
                boolean z3 = false;
                while (true) {
                    if (i >= length) {
                        z = z3;
                        break;
                    }
                    ActivityInfo activityInfo = activityInfoArr[i];
                    if (activityInfo.enabled && activityInfo.targetActivity == null) {
                        boolean zIsUnityActivity = isUnityActivity(activityInfo.name);
                        if (str == null) {
                            str = activityInfo.name;
                        } else if (z2 == zIsUnityActivity) {
                            if (z2 && zIsUnityActivity) {
                                break;
                            }
                            z3 = true;
                        } else if (zIsUnityActivity) {
                            str = activityInfo.name;
                            z3 = false;
                        }
                        z2 = zIsUnityActivity;
                    }
                    i++;
                }
                if (z) {
                    Log.e("UnityNotifications", "Multiple choices for activity for notifications, set activity explicitly in Notification Settings");
                    return null;
                }
                if (str != null) {
                    return Class.forName(str);
                }
                Log.e("UnityNotifications", "Activity class for notifications not found");
                return null;
            } catch (PackageManager.NameNotFoundException e2) {
                e2.printStackTrace();
                return null;
            }
        } catch (ClassNotFoundException e3) {
            Log.e("UnityNotifications", "Failed to find activity class: " + e3.getMessage());
            return null;
        }
    }

    private static boolean isUnityActivity(String str) {
        return str.endsWith(".UnityPlayerActivity") || str.endsWith(".UnityPlayerGameActivity");
    }

    private static boolean readAndCheckMagicNumber(DataInputStream dataInputStream, byte[] bArr) {
        for (byte b : bArr) {
            try {
                if (dataInputStream.readByte() != b) {
                    return false;
                }
            } catch (Exception unused) {
                return false;
            }
        }
        return true;
    }

    protected static Notification.Builder recoverBuilder(Context context, Notification notification) {
        try {
            Notification.Builder builderRecoverBuilder = Notification.Builder.recoverBuilder(context, notification);
            builderRecoverBuilder.setExtras(notification.extras);
            return builderRecoverBuilder;
        } catch (Exception e) {
            Log.e("UnityNotifications", "Failed to recover builder for notification!", e);
            return recoverBuilderCustom(context, notification);
        } catch (OutOfMemoryError e2) {
            Log.e("UnityNotifications", "Failed to recover builder for notification!", e2);
            return recoverBuilderCustom(context, notification);
        }
    }

    private static Notification.Builder recoverBuilderCustom(Context context, Notification notification) {
        Notification.Builder builderCreateNotificationBuilder = UnityNotificationManager.getNotificationManagerImpl(context).createNotificationBuilder(notification.extras.getString(UnityNotificationManager.KEY_CHANNEL_ID));
        UnityNotificationManager.setNotificationIcon(builderCreateNotificationBuilder, UnityNotificationManager.KEY_SMALL_ICON, notification.extras.getString(UnityNotificationManager.KEY_SMALL_ICON));
        String string = notification.extras.getString(UnityNotificationManager.KEY_LARGE_ICON);
        if (string != null && !string.isEmpty()) {
            UnityNotificationManager.setNotificationIcon(builderCreateNotificationBuilder, UnityNotificationManager.KEY_LARGE_ICON, string);
        }
        builderCreateNotificationBuilder.setContentTitle(notification.extras.getString(NotificationCompat.EXTRA_TITLE));
        builderCreateNotificationBuilder.setContentText(notification.extras.getString(NotificationCompat.EXTRA_TEXT));
        builderCreateNotificationBuilder.setAutoCancel((notification.flags & 16) != 0);
        if (notification.number >= 0) {
            builderCreateNotificationBuilder.setNumber(notification.number);
        }
        String string2 = notification.extras.getString(NotificationCompat.EXTRA_BIG_TEXT);
        if (string2 != null) {
            builderCreateNotificationBuilder.setStyle(new Notification.BigTextStyle().bigText(string2));
        }
        builderCreateNotificationBuilder.setWhen(notification.when);
        String group = notification.getGroup();
        if (group != null && !group.isEmpty()) {
            builderCreateNotificationBuilder.setGroup(group);
        }
        builderCreateNotificationBuilder.setGroupSummary((notification.flags & 512) != 0);
        String sortKey = notification.getSortKey();
        if (sortKey != null && !sortKey.isEmpty()) {
            builderCreateNotificationBuilder.setSortKey(sortKey);
        }
        builderCreateNotificationBuilder.setShowWhen(notification.extras.getBoolean(NotificationCompat.EXTRA_SHOW_WHEN, false));
        Integer notificationColor = UnityNotificationManager.getNotificationColor(notification);
        if (notificationColor != null) {
            UnityNotificationManager.setNotificationColor(builderCreateNotificationBuilder, notificationColor.intValue());
        }
        UnityNotificationManager.setNotificationUsesChronometer(builderCreateNotificationBuilder, notification.extras.getBoolean(NotificationCompat.EXTRA_SHOW_CHRONOMETER, false));
        UnityNotificationManager.setNotificationGroupAlertBehavior(builderCreateNotificationBuilder, UnityNotificationManager.getNotificationGroupAlertBehavior(notification));
        builderCreateNotificationBuilder.getExtras().putInt("id", notification.extras.getInt("id", 0));
        builderCreateNotificationBuilder.getExtras().putLong(UnityNotificationManager.KEY_REPEAT_INTERVAL, notification.extras.getLong(UnityNotificationManager.KEY_REPEAT_INTERVAL, 0L));
        builderCreateNotificationBuilder.getExtras().putLong(UnityNotificationManager.KEY_FIRE_TIME, notification.extras.getLong(UnityNotificationManager.KEY_FIRE_TIME, 0L));
        String string3 = notification.extras.getString("data");
        if (string3 != null && !string3.isEmpty()) {
            builderCreateNotificationBuilder.getExtras().putString("data", string3);
        }
        return builderCreateNotificationBuilder;
    }

    protected static void serializeNotification(SharedPreferences sharedPreferences, Notification notification, boolean z) {
        String strEncodeToString;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            if (z) {
                Intent intent = new Intent();
                intent.putExtra(UnityNotificationManager.KEY_NOTIFICATION, notification);
                if (!serializeNotificationParcel(intent, dataOutputStream)) {
                    return;
                }
                dataOutputStream.close();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                strEncodeToString = Base64.encodeToString(byteArray, 0, byteArray.length, 0);
            } else {
                if (!serializeNotificationCustom(notification, dataOutputStream)) {
                    return;
                }
                dataOutputStream.flush();
                byte[] byteArray2 = byteArrayOutputStream.toByteArray();
                strEncodeToString = Base64.encodeToString(byteArray2, 0, byteArray2.length, 0);
            }
            SharedPreferences.Editor editorClear = sharedPreferences.edit().clear();
            editorClear.putString("data", strEncodeToString);
            editorClear.apply();
        } catch (Exception e) {
            Log.e("UnityNotifications", "Failed to serialize notification", e);
        }
    }

    private static boolean serializeNotificationCustom(Notification notification, DataOutputStream dataOutputStream) {
        try {
            dataOutputStream.write(UNITY_MAGIC_NUMBER);
            dataOutputStream.writeInt(3);
            boolean z = notification.extras.getBoolean(NotificationCompat.EXTRA_SHOW_WHEN, false);
            dataOutputStream.writeInt(notification.extras.getInt("id"));
            serializeString(dataOutputStream, notification.extras.getString(NotificationCompat.EXTRA_TITLE));
            serializeString(dataOutputStream, notification.extras.getString(NotificationCompat.EXTRA_TEXT));
            serializeString(dataOutputStream, notification.extras.getString(UnityNotificationManager.KEY_SMALL_ICON));
            serializeString(dataOutputStream, notification.extras.getString(UnityNotificationManager.KEY_LARGE_ICON));
            dataOutputStream.writeLong(notification.extras.getLong(UnityNotificationManager.KEY_FIRE_TIME, -1L));
            dataOutputStream.writeLong(notification.extras.getLong(UnityNotificationManager.KEY_REPEAT_INTERVAL, -1L));
            serializeString(dataOutputStream, notification.extras.getString(NotificationCompat.EXTRA_BIG_TEXT));
            dataOutputStream.writeBoolean(notification.extras.getBoolean(NotificationCompat.EXTRA_SHOW_CHRONOMETER, false));
            dataOutputStream.writeBoolean(z);
            serializeString(dataOutputStream, notification.extras.getString("data"));
            dataOutputStream.writeBoolean(notification.extras.getBoolean(UnityNotificationManager.KEY_SHOW_IN_FOREGROUND, true));
            String string = notification.extras.getString(UnityNotificationManager.KEY_BIG_PICTURE);
            serializeString(dataOutputStream, string);
            if (string != null && string.length() > 0) {
                serializeString(dataOutputStream, notification.extras.getString(UnityNotificationManager.KEY_BIG_LARGE_ICON));
                serializeString(dataOutputStream, notification.extras.getString(UnityNotificationManager.KEY_BIG_CONTENT_TITLE));
                serializeString(dataOutputStream, notification.extras.getString(UnityNotificationManager.KEY_BIG_CONTENT_DESCRIPTION));
                serializeString(dataOutputStream, notification.extras.getString(UnityNotificationManager.KEY_BIG_SUMMARY_TEXT));
                dataOutputStream.writeBoolean(notification.extras.getBoolean(UnityNotificationManager.KEY_BIG_SHOW_WHEN_COLLAPSED, false));
            }
            serializeString(dataOutputStream, notification.getChannelId());
            Integer notificationColor = UnityNotificationManager.getNotificationColor(notification);
            dataOutputStream.writeBoolean(notificationColor != null);
            if (notificationColor != null) {
                dataOutputStream.writeInt(notificationColor.intValue());
            }
            dataOutputStream.writeInt(notification.number);
            dataOutputStream.writeBoolean((notification.flags & 16) != 0);
            serializeString(dataOutputStream, notification.getGroup());
            dataOutputStream.writeBoolean((notification.flags & 512) != 0);
            dataOutputStream.writeInt(UnityNotificationManager.getNotificationGroupAlertBehavior(notification));
            serializeString(dataOutputStream, notification.getSortKey());
            if (z) {
                dataOutputStream.writeLong(notification.when);
            }
            return true;
        } catch (Exception e) {
            Log.e("UnityNotifications", "Failed to serialize notification", e);
            return false;
        }
    }

    static boolean serializeNotificationParcel(Intent intent, DataOutputStream dataOutputStream) {
        try {
            byte[] bArrSerializeParcelable = serializeParcelable(intent);
            if (bArrSerializeParcelable != null && bArrSerializeParcelable.length != 0) {
                dataOutputStream.write(UNITY_MAGIC_NUMBER_PARCELLED);
                dataOutputStream.writeInt(0);
                dataOutputStream.writeInt(bArrSerializeParcelable.length);
                dataOutputStream.write(bArrSerializeParcelable);
                return true;
            }
            return false;
        } catch (Exception e) {
            Log.e("UnityNotifications", "Failed to serialize notification as Parcel", e);
            return false;
        } catch (OutOfMemoryError e2) {
            Log.e("UnityNotifications", "Failed to serialize notification as Parcel", e2);
            return false;
        }
    }

    static byte[] serializeParcelable(Parcelable parcelable) {
        try {
            Parcel parcelObtain = Parcel.obtain();
            Bundle bundle = new Bundle();
            bundle.putParcelable("obj", parcelable);
            parcelObtain.writeParcelable(bundle, 0);
            byte[] bArrMarshall = parcelObtain.marshall();
            parcelObtain.recycle();
            return bArrMarshall;
        } catch (Exception e) {
            Log.e("UnityNotifications", "Failed to serialize Parcelable", e);
            return null;
        } catch (OutOfMemoryError e2) {
            Log.e("UnityNotifications", "Failed to serialize Parcelable", e2);
            return null;
        }
    }

    static void serializeString(DataOutputStream dataOutputStream, String str) throws IOException {
        if (str == null || str.length() == 0) {
            dataOutputStream.writeInt(0);
            return;
        }
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        dataOutputStream.writeInt(bytes.length);
        dataOutputStream.write(bytes);
    }
}
