.class public final Lcom/google/android/gms/nearby/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# static fields
.field public static final zzA:Lcom/google/android/gms/common/Feature;

.field public static final zzB:Lcom/google/android/gms/common/Feature;

.field public static final zzC:Lcom/google/android/gms/common/Feature;

.field public static final zzD:Lcom/google/android/gms/common/Feature;

.field public static final zzE:Lcom/google/android/gms/common/Feature;

.field public static final zzF:Lcom/google/android/gms/common/Feature;

.field public static final zzG:Lcom/google/android/gms/common/Feature;

.field public static final zzH:Lcom/google/android/gms/common/Feature;

.field public static final zzI:Lcom/google/android/gms/common/Feature;

.field public static final zzJ:Lcom/google/android/gms/common/Feature;

.field public static final zzK:Lcom/google/android/gms/common/Feature;

.field public static final zzL:Lcom/google/android/gms/common/Feature;

.field public static final zzM:Lcom/google/android/gms/common/Feature;

.field public static final zzN:Lcom/google/android/gms/common/Feature;

.field public static final zzO:Lcom/google/android/gms/common/Feature;

.field public static final zzP:Lcom/google/android/gms/common/Feature;

.field public static final zzQ:Lcom/google/android/gms/common/Feature;

.field public static final zzR:Lcom/google/android/gms/common/Feature;

.field public static final zzS:Lcom/google/android/gms/common/Feature;

.field public static final zzT:Lcom/google/android/gms/common/Feature;

.field public static final zzU:Lcom/google/android/gms/common/Feature;

.field public static final zzV:Lcom/google/android/gms/common/Feature;

.field public static final zzW:[Lcom/google/android/gms/common/Feature;

.field public static final zza:Lcom/google/android/gms/common/Feature;

.field public static final zzb:Lcom/google/android/gms/common/Feature;

.field public static final zzc:Lcom/google/android/gms/common/Feature;

.field public static final zzd:Lcom/google/android/gms/common/Feature;

.field public static final zze:Lcom/google/android/gms/common/Feature;

.field public static final zzf:Lcom/google/android/gms/common/Feature;

.field public static final zzg:Lcom/google/android/gms/common/Feature;

.field public static final zzh:Lcom/google/android/gms/common/Feature;

.field public static final zzi:Lcom/google/android/gms/common/Feature;

.field public static final zzj:Lcom/google/android/gms/common/Feature;

.field public static final zzk:Lcom/google/android/gms/common/Feature;

.field public static final zzl:Lcom/google/android/gms/common/Feature;

.field public static final zzm:Lcom/google/android/gms/common/Feature;

.field public static final zzn:Lcom/google/android/gms/common/Feature;

.field public static final zzo:Lcom/google/android/gms/common/Feature;

.field public static final zzp:Lcom/google/android/gms/common/Feature;

.field public static final zzq:Lcom/google/android/gms/common/Feature;

.field public static final zzr:Lcom/google/android/gms/common/Feature;

.field public static final zzs:Lcom/google/android/gms/common/Feature;

.field public static final zzt:Lcom/google/android/gms/common/Feature;

.field public static final zzu:Lcom/google/android/gms/common/Feature;

.field public static final zzv:Lcom/google/android/gms/common/Feature;

.field public static final zzw:Lcom/google/android/gms/common/Feature;

.field public static final zzx:Lcom/google/android/gms/common/Feature;

.field public static final zzy:Lcom/google/android/gms/common/Feature;

.field public static final zzz:Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 51

    .line 1
    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "nearby_sharing"

    const-wide/16 v2, 0x24

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/nearby/zza;->zza:Lcom/google/android/gms/common/Feature;

    new-instance v1, Lcom/google/android/gms/common/Feature;

    .line 2
    const-string v2, "nearby_sharing_allow_permission_auto"

    const-wide/16 v3, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lcom/google/android/gms/nearby/zza;->zzb:Lcom/google/android/gms/common/Feature;

    new-instance v2, Lcom/google/android/gms/common/Feature;

    const-string v5, "nearby_sharing_get_phone_numbers"

    .line 3
    invoke-direct {v2, v5, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v2, Lcom/google/android/gms/nearby/zza;->zzc:Lcom/google/android/gms/common/Feature;

    new-instance v5, Lcom/google/android/gms/common/Feature;

    .line 4
    const-string v6, "nearby_sharing_ignore_consent"

    const-wide/16 v7, 0x2

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v5, Lcom/google/android/gms/nearby/zza;->zzd:Lcom/google/android/gms/common/Feature;

    new-instance v6, Lcom/google/android/gms/common/Feature;

    const-string v9, "nearby_sharing_phonesky"

    const-wide/16 v10, 0x6

    .line 5
    invoke-direct {v6, v9, v10, v11}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v6, Lcom/google/android/gms/nearby/zza;->zze:Lcom/google/android/gms/common/Feature;

    new-instance v9, Lcom/google/android/gms/common/Feature;

    .line 6
    const-string v10, "nearby_connections"

    const-wide/16 v11, 0x3

    invoke-direct {v9, v10, v11, v12}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v9, Lcom/google/android/gms/nearby/zza;->zzf:Lcom/google/android/gms/common/Feature;

    new-instance v10, Lcom/google/android/gms/common/Feature;

    const-string v13, "nearby_connections_v2"

    .line 7
    invoke-direct {v10, v13, v7, v8}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v10, Lcom/google/android/gms/nearby/zza;->zzg:Lcom/google/android/gms/common/Feature;

    new-instance v13, Lcom/google/android/gms/common/Feature;

    const-string v14, "nearby_exposure_notification"

    .line 8
    invoke-direct {v13, v14, v11, v12}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v13, Lcom/google/android/gms/nearby/zza;->zzh:Lcom/google/android/gms/common/Feature;

    new-instance v14, Lcom/google/android/gms/common/Feature;

    const-string v15, "nearby_exposure_notification_1p"

    .line 9
    invoke-direct {v14, v15, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v14, Lcom/google/android/gms/nearby/zza;->zzi:Lcom/google/android/gms/common/Feature;

    new-instance v15, Lcom/google/android/gms/common/Feature;

    const-string v7, "nearby_exposure_notification_get_version"

    .line 10
    invoke-direct {v15, v7, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v15, Lcom/google/android/gms/nearby/zza;->zzj:Lcom/google/android/gms/common/Feature;

    new-instance v7, Lcom/google/android/gms/common/Feature;

    const-string v8, "nearby_exposure_notification_get_calibration_confidence"

    .line 11
    invoke-direct {v7, v8, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v7, Lcom/google/android/gms/nearby/zza;->zzk:Lcom/google/android/gms/common/Feature;

    new-instance v8, Lcom/google/android/gms/common/Feature;

    const-string v11, "nearby_exposure_notification_get_day_summaries"

    .line 12
    invoke-direct {v8, v11, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v8, Lcom/google/android/gms/nearby/zza;->zzl:Lcom/google/android/gms/common/Feature;

    new-instance v11, Lcom/google/android/gms/common/Feature;

    const-string v12, "nearby_exposure_notification_get_status"

    .line 13
    invoke-direct {v11, v12, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v11, Lcom/google/android/gms/nearby/zza;->zzm:Lcom/google/android/gms/common/Feature;

    new-instance v12, Lcom/google/android/gms/common/Feature;

    move-object/from16 v20, v0

    const-string v0, "nearby_exposure_notification_diagnosis_keys_data_mapping"

    .line 14
    invoke-direct {v12, v0, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v12, Lcom/google/android/gms/nearby/zza;->zzn:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    move-object/from16 v21, v1

    const-string v1, "nearby_exposure_notification_diagnosis_key_file_supplier"

    .line 15
    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/nearby/zza;->zzo:Lcom/google/android/gms/common/Feature;

    new-instance v1, Lcom/google/android/gms/common/Feature;

    move-object/from16 v22, v0

    const-string v0, "nearby_exposure_notification_package_configuration"

    .line 16
    invoke-direct {v1, v0, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lcom/google/android/gms/nearby/zza;->zzp:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    move-object/from16 v23, v1

    const-string v1, "nearby_exposure_notification_preauthorize_key_release"

    .line 17
    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/nearby/zza;->zzq:Lcom/google/android/gms/common/Feature;

    new-instance v1, Lcom/google/android/gms/common/Feature;

    move-object/from16 v24, v0

    const-string v0, "nearby_exposure_notification_preauthorize_key_release_for_self_report"

    .line 18
    invoke-direct {v1, v0, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lcom/google/android/gms/nearby/zza;->zzr:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 19
    const-string v3, "nearby_fast_pair"

    move-object/from16 v26, v1

    move-object v4, v2

    const-wide/16 v1, 0x4

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/nearby/zza;->zzs:Lcom/google/android/gms/common/Feature;

    new-instance v3, Lcom/google/android/gms/common/Feature;

    move-object/from16 v27, v0

    const-string v0, "nearby_fast_pair_sass"

    .line 20
    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v3, Lcom/google/android/gms/nearby/zza;->zzt:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "nearby_fast_pair_wear_os"

    move-object/from16 v28, v3

    const-wide/16 v2, 0x3

    .line 21
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/nearby/zza;->zzu:Lcom/google/android/gms/common/Feature;

    new-instance v1, Lcom/google/android/gms/common/Feature;

    const-string v2, "nearby_fast_pair_wear_peripheral"

    move-object/from16 v29, v4

    const-wide/16 v3, 0x1

    .line 22
    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lcom/google/android/gms/nearby/zza;->zzv:Lcom/google/android/gms/common/Feature;

    new-instance v2, Lcom/google/android/gms/common/Feature;

    move-object/from16 v30, v0

    const-string v0, "nearby_fast_pair_wear_peripheral_notify_disable"

    .line 23
    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v2, Lcom/google/android/gms/nearby/zza;->zzw:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 24
    const-string v3, "nearby_presence"

    move-object v4, v1

    move-object/from16 v31, v2

    const-wide/16 v1, 0x5

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/nearby/zza;->zzx:Lcom/google/android/gms/common/Feature;

    new-instance v3, Lcom/google/android/gms/common/Feature;

    const-string v1, "nearby_presence_broadcast_request_api"

    move-object/from16 v33, v4

    move-object v2, v5

    const-wide/16 v4, 0x1

    .line 25
    invoke-direct {v3, v1, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v3, Lcom/google/android/gms/nearby/zza;->zzy:Lcom/google/android/gms/common/Feature;

    new-instance v1, Lcom/google/android/gms/common/Feature;

    move-object/from16 v34, v0

    const-string v0, "nearby_presence_get_device_account_id"

    .line 26
    invoke-direct {v1, v0, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lcom/google/android/gms/nearby/zza;->zzz:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    move-object/from16 v35, v1

    const-string v1, "nearby_presence_get_version"

    .line 27
    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/nearby/zza;->zzA:Lcom/google/android/gms/common/Feature;

    new-instance v1, Lcom/google/android/gms/common/Feature;

    move-object/from16 v36, v0

    const-string v0, "nearby_presence_reset"

    .line 28
    invoke-direct {v1, v0, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lcom/google/android/gms/nearby/zza;->zzB:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    move-object/from16 v37, v1

    const-string v1, "nearby_presence_sync"

    .line 29
    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/nearby/zza;->zzC:Lcom/google/android/gms/common/Feature;

    new-instance v1, Lcom/google/android/gms/common/Feature;

    move-object/from16 v38, v0

    const-string v0, "nearby_connections_get_local_endpoint_id"

    .line 30
    invoke-direct {v1, v0, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lcom/google/android/gms/nearby/zza;->zzD:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    move-object/from16 v39, v1

    const-string v1, "nearby_connections_register_device_provider"

    .line 31
    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/nearby/zza;->zzE:Lcom/google/android/gms/common/Feature;

    new-instance v1, Lcom/google/android/gms/common/Feature;

    move-object/from16 v40, v0

    const-string v0, "nearby_connections_update_advertising_options"

    .line 32
    invoke-direct {v1, v0, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lcom/google/android/gms/nearby/zza;->zzF:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    move-object/from16 v41, v1

    const-string v1, "nearby_connections_update_connection_options"

    .line 33
    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/nearby/zza;->zzG:Lcom/google/android/gms/common/Feature;

    new-instance v1, Lcom/google/android/gms/common/Feature;

    move-object/from16 v42, v0

    const-string v0, "nearby_connections_update_discovery_options"

    .line 34
    invoke-direct {v1, v0, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lcom/google/android/gms/nearby/zza;->zzH:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    move-object/from16 v43, v1

    const-string v1, "nearby_connections_setting"

    .line 35
    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/nearby/zza;->zzI:Lcom/google/android/gms/common/Feature;

    new-instance v1, Lcom/google/android/gms/common/Feature;

    const-string v4, "nearby_sharing_everyone_mode"

    move-object/from16 v44, v2

    move-object v5, v3

    const-wide/16 v2, 0x2

    .line 36
    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lcom/google/android/gms/nearby/zza;->zzJ:Lcom/google/android/gms/common/Feature;

    new-instance v2, Lcom/google/android/gms/common/Feature;

    const-string v3, "nearby_sharing_toggle_fast_init_notification"

    move-object v4, v0

    move-object/from16 v45, v1

    const-wide/16 v0, 0x1

    .line 37
    invoke-direct {v2, v3, v0, v1}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v2, Lcom/google/android/gms/nearby/zza;->zzK:Lcom/google/android/gms/common/Feature;

    new-instance v3, Lcom/google/android/gms/common/Feature;

    move-object/from16 v46, v2

    const-string v2, "nearby_sharing_batch_contacts_editing_request"

    .line 38
    invoke-direct {v3, v2, v0, v1}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v3, Lcom/google/android/gms/nearby/zza;->zzL:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "nearby_uwb"

    move-object/from16 v47, v3

    const-wide/16 v2, 0x3

    .line 39
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/nearby/zza;->zzM:Lcom/google/android/gms/common/Feature;

    new-instance v1, Lcom/google/android/gms/common/Feature;

    const-string v2, "nearby_uwb_add_controlee"

    move-object/from16 v18, v4

    const-wide/16 v3, 0x2

    .line 40
    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lcom/google/android/gms/nearby/zza;->zzN:Lcom/google/android/gms/common/Feature;

    new-instance v2, Lcom/google/android/gms/common/Feature;

    move-object/from16 v16, v0

    const-string v0, "nearby_uwb_remove_controlee"

    .line 41
    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v2, Lcom/google/android/gms/nearby/zza;->zzO:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v3, "nearby_sharing_get_device_account_id"

    move-object v4, v1

    move-object/from16 v17, v2

    const-wide/16 v1, 0x1

    .line 42
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/nearby/zza;->zzP:Lcom/google/android/gms/common/Feature;

    new-instance v3, Lcom/google/android/gms/common/Feature;

    const-string v1, "nearby_sharing_get_intent"

    move-object/from16 v19, v4

    move-object v2, v5

    const-wide/16 v4, 0x2

    .line 43
    invoke-direct {v3, v1, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v3, Lcom/google/android/gms/nearby/zza;->zzQ:Lcom/google/android/gms/common/Feature;

    new-instance v1, Lcom/google/android/gms/common/Feature;

    const-string v4, "nearby_sharing_get_share_targets"

    move-object/from16 v49, v2

    move-object v5, v3

    const-wide/16 v2, 0x1

    .line 44
    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lcom/google/android/gms/nearby/zza;->zzR:Lcom/google/android/gms/common/Feature;

    new-instance v2, Lcom/google/android/gms/common/Feature;

    const-string v3, "nearby_sharing_sync"

    move-object v4, v0

    move-object/from16 v50, v1

    const-wide/16 v0, 0x2

    .line 45
    invoke-direct {v2, v3, v0, v1}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v2, Lcom/google/android/gms/nearby/zza;->zzS:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "nearby_sharing_get_actions"

    move-object/from16 v48, v2

    const-wide/16 v2, 0x5

    .line 46
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/nearby/zza;->zzT:Lcom/google/android/gms/common/Feature;

    new-instance v1, Lcom/google/android/gms/common/Feature;

    const-string v2, "nearby_sharing_opt_in_by_remote_copy"

    move-object/from16 v32, v4

    const-wide/16 v3, 0x1

    .line 47
    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lcom/google/android/gms/nearby/zza;->zzU:Lcom/google/android/gms/common/Feature;

    new-instance v2, Lcom/google/android/gms/common/Feature;

    move-object/from16 v25, v0

    const-string v0, "nearby_sharing_get_opt_in_status"

    .line 48
    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v2, Lcom/google/android/gms/nearby/zza;->zzV:Lcom/google/android/gms/common/Feature;

    const/16 v0, 0x30

    new-array v0, v0, [Lcom/google/android/gms/common/Feature;

    const/4 v3, 0x0

    aput-object v20, v0, v3

    const/4 v3, 0x1

    aput-object v21, v0, v3

    const/4 v3, 0x2

    aput-object v29, v0, v3

    const/4 v3, 0x3

    aput-object v44, v0, v3

    const/4 v3, 0x4

    aput-object v6, v0, v3

    const/4 v3, 0x5

    aput-object v9, v0, v3

    const/4 v3, 0x6

    aput-object v10, v0, v3

    const/4 v3, 0x7

    aput-object v13, v0, v3

    const/16 v3, 0x8

    aput-object v14, v0, v3

    const/16 v3, 0x9

    aput-object v15, v0, v3

    const/16 v3, 0xa

    aput-object v7, v0, v3

    const/16 v3, 0xb

    aput-object v8, v0, v3

    const/16 v3, 0xc

    aput-object v11, v0, v3

    const/16 v3, 0xd

    aput-object v12, v0, v3

    const/16 v3, 0xe

    aput-object v22, v0, v3

    const/16 v3, 0xf

    aput-object v23, v0, v3

    const/16 v3, 0x10

    aput-object v24, v0, v3

    const/16 v3, 0x11

    aput-object v26, v0, v3

    const/16 v3, 0x12

    aput-object v27, v0, v3

    const/16 v3, 0x13

    aput-object v28, v0, v3

    const/16 v3, 0x14

    aput-object v30, v0, v3

    const/16 v3, 0x15

    aput-object v33, v0, v3

    const/16 v3, 0x16

    aput-object v31, v0, v3

    const/16 v3, 0x17

    aput-object v34, v0, v3

    const/16 v3, 0x18

    aput-object v49, v0, v3

    const/16 v3, 0x19

    aput-object v35, v0, v3

    const/16 v3, 0x1a

    aput-object v36, v0, v3

    const/16 v3, 0x1b

    aput-object v37, v0, v3

    const/16 v3, 0x1c

    aput-object v38, v0, v3

    const/16 v3, 0x1d

    aput-object v39, v0, v3

    const/16 v3, 0x1e

    aput-object v40, v0, v3

    const/16 v3, 0x1f

    aput-object v41, v0, v3

    const/16 v3, 0x20

    aput-object v42, v0, v3

    const/16 v3, 0x21

    aput-object v43, v0, v3

    const/16 v3, 0x22

    aput-object v18, v0, v3

    const/16 v3, 0x23

    aput-object v45, v0, v3

    const/16 v3, 0x24

    aput-object v46, v0, v3

    const/16 v3, 0x25

    aput-object v47, v0, v3

    const/16 v3, 0x26

    aput-object v16, v0, v3

    const/16 v3, 0x27

    aput-object v19, v0, v3

    const/16 v3, 0x28

    aput-object v17, v0, v3

    const/16 v3, 0x29

    aput-object v32, v0, v3

    const/16 v3, 0x2a

    aput-object v5, v0, v3

    const/16 v3, 0x2b

    aput-object v50, v0, v3

    const/16 v3, 0x2c

    aput-object v48, v0, v3

    const/16 v3, 0x2d

    aput-object v25, v0, v3

    const/16 v3, 0x2e

    aput-object v1, v0, v3

    const/16 v1, 0x2f

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/nearby/zza;->zzW:[Lcom/google/android/gms/common/Feature;

    return-void
.end method
