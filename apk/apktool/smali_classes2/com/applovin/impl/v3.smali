.class public abstract Lcom/applovin/impl/v3;
.super Lcom/applovin/impl/c5;
.source "SourceFile"


# static fields
.field public static final A8:Lcom/applovin/impl/c5;

.field public static final B8:Lcom/applovin/impl/c5;

.field public static final C7:Lcom/applovin/impl/c5;

.field public static final C8:Lcom/applovin/impl/c5;

.field public static final D7:Lcom/applovin/impl/c5;

.field public static final D8:Lcom/applovin/impl/c5;

.field public static final E7:Lcom/applovin/impl/c5;

.field public static final E8:Lcom/applovin/impl/c5;

.field public static final F7:Lcom/applovin/impl/c5;

.field public static final F8:Lcom/applovin/impl/c5;

.field public static final G7:Lcom/applovin/impl/c5;

.field public static final G8:Lcom/applovin/impl/c5;

.field public static final H7:Lcom/applovin/impl/c5;

.field public static final H8:Lcom/applovin/impl/c5;

.field public static final I7:Lcom/applovin/impl/c5;

.field public static final I8:Lcom/applovin/impl/c5;

.field public static final J7:Lcom/applovin/impl/c5;

.field public static final J8:Lcom/applovin/impl/c5;

.field public static final K7:Lcom/applovin/impl/c5;

.field public static final K8:Lcom/applovin/impl/c5;

.field public static final L7:Lcom/applovin/impl/c5;

.field public static final L8:Lcom/applovin/impl/c5;

.field public static final M7:Lcom/applovin/impl/c5;

.field public static final M8:Lcom/applovin/impl/c5;

.field public static final N7:Lcom/applovin/impl/c5;

.field public static final N8:Lcom/applovin/impl/c5;

.field public static final O7:Lcom/applovin/impl/c5;

.field public static final O8:Lcom/applovin/impl/c5;

.field public static final P7:Lcom/applovin/impl/c5;

.field public static final P8:Lcom/applovin/impl/c5;

.field public static final Q7:Lcom/applovin/impl/c5;

.field public static final Q8:Lcom/applovin/impl/c5;

.field public static final R7:Lcom/applovin/impl/c5;

.field public static final R8:Lcom/applovin/impl/c5;

.field public static final S7:Lcom/applovin/impl/c5;

.field public static final S8:Lcom/applovin/impl/c5;

.field public static final T7:Lcom/applovin/impl/c5;

.field public static final T8:Lcom/applovin/impl/c5;

.field public static final U7:Lcom/applovin/impl/c5;

.field public static final U8:Lcom/applovin/impl/c5;

.field public static final V7:Lcom/applovin/impl/c5;

.field public static final W7:Lcom/applovin/impl/c5;

.field public static final X7:Lcom/applovin/impl/c5;

.field public static final Y7:Lcom/applovin/impl/c5;

.field public static final Z7:Lcom/applovin/impl/c5;

.field public static final a8:Lcom/applovin/impl/c5;

.field public static final b8:Lcom/applovin/impl/c5;

.field public static final c8:Lcom/applovin/impl/c5;

.field public static final d8:Lcom/applovin/impl/c5;

.field public static final e8:Lcom/applovin/impl/c5;

.field public static final f8:Lcom/applovin/impl/c5;

.field public static final g8:Lcom/applovin/impl/c5;

.field public static final h8:Lcom/applovin/impl/c5;

.field public static final i8:Lcom/applovin/impl/c5;

.field public static final j8:Lcom/applovin/impl/c5;

.field public static final k8:Lcom/applovin/impl/c5;

.field public static final l8:Lcom/applovin/impl/c5;

.field public static final m8:Lcom/applovin/impl/c5;

.field public static final n8:Lcom/applovin/impl/c5;

.field public static final o8:Lcom/applovin/impl/c5;

.field public static final p8:Lcom/applovin/impl/c5;

.field public static final q8:Lcom/applovin/impl/c5;

.field public static final r8:Lcom/applovin/impl/c5;

.field public static final s8:Lcom/applovin/impl/c5;

.field public static final t8:Lcom/applovin/impl/c5;

.field public static final u8:Lcom/applovin/impl/c5;

.field public static final v8:Lcom/applovin/impl/c5;

.field public static final w8:Lcom/applovin/impl/c5;

.field public static final x8:Lcom/applovin/impl/c5;

.field public static final y8:Lcom/applovin/impl/c5;

.field public static final z8:Lcom/applovin/impl/c5;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const-string v0, "afi"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/v3;->C7:Lcom/applovin/impl/c5;

    .line 6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "iafiwaa"

    invoke-static {v2, v0}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v2

    sput-object v2, Lcom/applovin/impl/v3;->D7:Lcom/applovin/impl/c5;

    .line 11
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "afi_ms"

    invoke-static {v4, v3}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v3

    sput-object v3, Lcom/applovin/impl/v3;->E7:Lcom/applovin/impl/c5;

    .line 17
    const-string v3, "mediation_endpoint"

    const-string v4, "https://ms.applovin.com/"

    invoke-static {v3, v4}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v3

    sput-object v3, Lcom/applovin/impl/v3;->F7:Lcom/applovin/impl/c5;

    .line 18
    const-string v3, "mediation_backup_endpoint"

    const-string v4, "https://ms.applvn.com/"

    invoke-static {v3, v4}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v3

    sput-object v3, Lcom/applovin/impl/v3;->G7:Lcom/applovin/impl/c5;

    const-wide/16 v3, 0x2

    .line 23
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "fetch_next_ad_retry_delay_ms"

    invoke-static {v4, v3}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v3

    sput-object v3, Lcom/applovin/impl/v3;->H7:Lcom/applovin/impl/c5;

    const-wide/16 v3, 0x1e

    .line 28
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "fetch_next_ad_timeout_ms"

    invoke-static {v6, v5}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v5

    sput-object v5, Lcom/applovin/impl/v3;->I7:Lcom/applovin/impl/c5;

    const-wide/16 v5, 0x7

    .line 33
    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "fetch_mediation_debugger_info_timeout_ms"

    invoke-static {v6, v5}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v5

    sput-object v5, Lcom/applovin/impl/v3;->J7:Lcom/applovin/impl/c5;

    .line 38
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v6, "auto_init_mediation_debugger"

    invoke-static {v6, v5}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v6

    sput-object v6, Lcom/applovin/impl/v3;->K7:Lcom/applovin/impl/c5;

    .line 46
    const-string v6, "postback_macros"

    const-string v7, "{\"{MCODE}\":\"mcode\",\"{BCODE}\":\"bcode\",\"{ICODE}\":\"icode\",\"{SCODE}\":\"scode\"}"

    invoke-static {v6, v7}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v6

    sput-object v6, Lcom/applovin/impl/v3;->L7:Lcom/applovin/impl/c5;

    .line 51
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "max_signal_provider_latency_ms"

    invoke-static {v7, v6}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v6

    sput-object v6, Lcom/applovin/impl/v3;->M7:Lcom/applovin/impl/c5;

    const-wide/16 v6, 0xa

    .line 56
    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "default_adapter_timeout_ms"

    invoke-static {v7, v6}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v6

    sput-object v6, Lcom/applovin/impl/v3;->N7:Lcom/applovin/impl/c5;

    .line 61
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "ad_refresh_ms"

    invoke-static {v7, v6}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v6

    sput-object v6, Lcom/applovin/impl/v3;->O7:Lcom/applovin/impl/c5;

    .line 66
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "ad_load_failure_refresh_ms"

    invoke-static {v4, v3}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v3

    sput-object v3, Lcom/applovin/impl/v3;->P7:Lcom/applovin/impl/c5;

    .line 71
    const-string v3, "ad_load_failure_refresh_ignore_error_codes"

    const-string v4, "204"

    invoke-static {v3, v4}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v3

    sput-object v3, Lcom/applovin/impl/v3;->Q7:Lcom/applovin/impl/c5;

    const-wide/16 v3, 0x0

    .line 76
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "refresh_ad_on_app_resume_elapsed_threshold_ms"

    invoke-static {v4, v3}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v4

    sput-object v4, Lcom/applovin/impl/v3;->R7:Lcom/applovin/impl/c5;

    .line 81
    const-string v4, "refresh_ad_view_timer_responds_to_background"

    invoke-static {v4, v5}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v4

    sput-object v4, Lcom/applovin/impl/v3;->S7:Lcom/applovin/impl/c5;

    .line 86
    const-string v4, "refresh_ad_view_timer_responds_to_store_kit"

    invoke-static {v4, v5}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v4

    sput-object v4, Lcom/applovin/impl/v3;->T7:Lcom/applovin/impl/c5;

    .line 91
    const-string v4, "refresh_ad_view_timer_responds_to_window_visibility_changed"

    invoke-static {v4, v0}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v4

    sput-object v4, Lcom/applovin/impl/v3;->U7:Lcom/applovin/impl/c5;

    .line 96
    const-string v4, "avrsponse"

    invoke-static {v4, v0}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v4

    sput-object v4, Lcom/applovin/impl/v3;->V7:Lcom/applovin/impl/c5;

    .line 101
    const-string v4, "allow_pause_auto_refresh_immediately"

    invoke-static {v4, v0}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v4

    sput-object v4, Lcom/applovin/impl/v3;->W7:Lcom/applovin/impl/c5;

    .line 106
    const-string v4, "ad_view_race_condition_fix_enabled"

    invoke-static {v4, v0}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v4

    sput-object v4, Lcom/applovin/impl/v3;->X7:Lcom/applovin/impl/c5;

    .line 111
    const-string v4, "always_destroy_ad_view_on_ui_thread"

    invoke-static {v4, v0}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v4

    sput-object v4, Lcom/applovin/impl/v3;->Y7:Lcom/applovin/impl/c5;

    .line 116
    const-string v4, "fullscreen_display_delay_ms"

    invoke-static {v4, v3}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v4

    sput-object v4, Lcom/applovin/impl/v3;->Z7:Lcom/applovin/impl/c5;

    .line 124
    const-string v4, "susaode"

    invoke-static {v4, v0}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v4

    sput-object v4, Lcom/applovin/impl/v3;->a8:Lcom/applovin/impl/c5;

    const-wide/16 v6, 0x1f4

    .line 132
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v6, "ahdm"

    invoke-static {v6, v4}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v4

    sput-object v4, Lcom/applovin/impl/v3;->b8:Lcom/applovin/impl/c5;

    const-wide/16 v6, 0xf6

    .line 139
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 140
    const-string v6, "ad_view_refresh_precache_request_viewability_undesired_flags"

    invoke-static {v6, v4}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v4

    sput-object v4, Lcom/applovin/impl/v3;->c8:Lcom/applovin/impl/c5;

    .line 151
    const-string v4, "ad_view_refresh_precache_request_enabled"

    invoke-static {v4, v5}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v4

    sput-object v4, Lcom/applovin/impl/v3;->d8:Lcom/applovin/impl/c5;

    .line 156
    const-string v4, "famttl_ms"

    invoke-static {v4, v3}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v4

    sput-object v4, Lcom/applovin/impl/v3;->e8:Lcom/applovin/impl/c5;

    const-wide/16 v6, -0x1

    .line 161
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v6, "signal_expiration_ms"

    invoke-static {v6, v4}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v6

    sput-object v6, Lcom/applovin/impl/v3;->f8:Lcom/applovin/impl/c5;

    .line 166
    sget-object v6, Lcom/applovin/impl/g5$b;->a:Lcom/applovin/impl/g5$b;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "signal_cache_level"

    invoke-static {v7, v6}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v6

    sput-object v6, Lcom/applovin/impl/v3;->g8:Lcom/applovin/impl/c5;

    .line 171
    sget-object v6, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x4

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "ad_expiration_ms"

    invoke-static {v10, v9}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v9

    sput-object v9, Lcom/applovin/impl/v3;->h8:Lcom/applovin/impl/c5;

    .line 176
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "native_ad_expiration_ms"

    invoke-static {v7, v6}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v6

    sput-object v6, Lcom/applovin/impl/v3;->i8:Lcom/applovin/impl/c5;

    .line 181
    const-string v6, "rena"

    invoke-static {v6, v5}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v6

    sput-object v6, Lcom/applovin/impl/v3;->j8:Lcom/applovin/impl/c5;

    .line 186
    const-string v6, "fullscreen_ad_displayed_timeout_ms"

    invoke-static {v6, v4}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v6

    sput-object v6, Lcom/applovin/impl/v3;->k8:Lcom/applovin/impl/c5;

    .line 191
    const-string v6, "freast_ms"

    invoke-static {v6, v4}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v6

    sput-object v6, Lcom/applovin/impl/v3;->l8:Lcom/applovin/impl/c5;

    .line 196
    const-string v6, "ad_hidden_timeout_ms"

    invoke-static {v6, v4}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v4

    sput-object v4, Lcom/applovin/impl/v3;->m8:Lcom/applovin/impl/c5;

    .line 201
    const-string v4, "schedule_ad_hidden_on_ad_dismiss"

    invoke-static {v4, v0}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v4

    sput-object v4, Lcom/applovin/impl/v3;->n8:Lcom/applovin/impl/c5;

    .line 206
    const-string v4, "schedule_ad_hidden_on_single_task_app_relaunch"

    invoke-static {v4, v0}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v4

    sput-object v4, Lcom/applovin/impl/v3;->o8:Lcom/applovin/impl/c5;

    const-wide/16 v6, 0x1

    .line 211
    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "ad_hidden_on_ad_dismiss_callback_delay_ms"

    invoke-static {v4, v2}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v2

    sput-object v2, Lcom/applovin/impl/v3;->p8:Lcom/applovin/impl/c5;

    .line 216
    const-string v2, "proe"

    invoke-static {v2, v0}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v2

    sput-object v2, Lcom/applovin/impl/v3;->q8:Lcom/applovin/impl/c5;

    const/4 v2, 0x2

    .line 221
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v8, "mute_state"

    invoke-static {v8, v4}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v4

    sput-object v4, Lcom/applovin/impl/v3;->r8:Lcom/applovin/impl/c5;

    .line 226
    const-string v4, "saf"

    invoke-static {v4, v1}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v4

    sput-object v4, Lcom/applovin/impl/v3;->s8:Lcom/applovin/impl/c5;

    .line 231
    const-string v4, "saui"

    invoke-static {v4, v1}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v1

    sput-object v1, Lcom/applovin/impl/v3;->t8:Lcom/applovin/impl/c5;

    .line 236
    const-string v1, "malm_v2_e"

    invoke-static {v1, v0}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v1

    sput-object v1, Lcom/applovin/impl/v3;->u8:Lcom/applovin/impl/c5;

    .line 241
    const-string v1, "slsaod"

    invoke-static {v1, v0}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v1

    sput-object v1, Lcom/applovin/impl/v3;->v8:Lcom/applovin/impl/c5;

    .line 246
    const-string v1, "saldm"

    invoke-static {v1, v3}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v1

    sput-object v1, Lcom/applovin/impl/v3;->w8:Lcom/applovin/impl/c5;

    const/4 v1, 0x1

    .line 252
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "mspc"

    invoke-static {v4, v3}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v3

    sput-object v3, Lcom/applovin/impl/v3;->x8:Lcom/applovin/impl/c5;

    const/4 v3, -0x1

    .line 257
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "mra"

    invoke-static {v4, v3}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v4

    sput-object v4, Lcom/applovin/impl/v3;->y8:Lcom/applovin/impl/c5;

    .line 262
    const-string v4, "mra_af"

    const-string v8, "INTER,REWARDED,BANNER,LEADER,MREC"

    invoke-static {v4, v8}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v4

    sput-object v4, Lcom/applovin/impl/v3;->z8:Lcom/applovin/impl/c5;

    .line 267
    const-string v4, "fadiafase"

    invoke-static {v4, v5}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v4

    sput-object v4, Lcom/applovin/impl/v3;->A8:Lcom/applovin/impl/c5;

    .line 272
    const-string v4, "fadwvcv"

    invoke-static {v4, v5}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v4

    sput-object v4, Lcom/applovin/impl/v3;->B8:Lcom/applovin/impl/c5;

    .line 277
    const-string v4, "bfarud"

    invoke-static {v4, v0}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v4

    sput-object v4, Lcom/applovin/impl/v3;->C8:Lcom/applovin/impl/c5;

    const/16 v4, 0xa

    .line 284
    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "com.textmeinc.textme"

    aput-object v9, v4, v8

    const-string v8, "com.textmeinc.freetone"

    aput-object v8, v4, v1

    const-string v1, "com.textmeinc.textme3"

    aput-object v1, v4, v2

    const/4 v1, 0x3

    const-string v2, "com.jaumo"

    aput-object v2, v4, v1

    const/4 v1, 0x4

    const-string v2, "com.jaumo.casual"

    aput-object v2, v4, v1

    const-string v1, "com.pinkapp"

    const/4 v2, 0x5

    aput-object v1, v4, v2

    const/4 v1, 0x6

    const-string v8, "com.jaumo.mature"

    aput-object v8, v4, v1

    const/4 v1, 0x7

    const-string v8, "com.jaumo.prime"

    aput-object v8, v4, v1

    const/16 v1, 0x8

    const-string v8, "com.jaumo.gay"

    aput-object v8, v4, v1

    const/16 v1, 0x9

    const-string v8, "com.jaumo.lesbian"

    aput-object v8, v4, v1

    .line 285
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/u7;->b(Ljava/util/List;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 286
    const-string v4, "inacc"

    invoke-static {v4, v1}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v1

    sput-object v1, Lcom/applovin/impl/v3;->D8:Lcom/applovin/impl/c5;

    .line 297
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "adiets_sec"

    invoke-static {v4, v1}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v1

    sput-object v1, Lcom/applovin/impl/v3;->E8:Lcom/applovin/impl/c5;

    .line 302
    const-string v1, "faomq"

    invoke-static {v1, v0}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v1

    sput-object v1, Lcom/applovin/impl/v3;->F8:Lcom/applovin/impl/c5;

    .line 307
    const-string v1, "rahcnct_sec"

    invoke-static {v1, v3}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v1

    sput-object v1, Lcom/applovin/impl/v3;->G8:Lcom/applovin/impl/c5;

    .line 313
    const-string v1, "paslbaf"

    const-string v3, "{}"

    invoke-static {v1, v3}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v1

    sput-object v1, Lcom/applovin/impl/v3;->H8:Lcom/applovin/impl/c5;

    .line 319
    const-string v1, "msbl"

    const-string v3, "{\"ad\":[\"ttdasi_ms\"]}"

    invoke-static {v1, v3}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v1

    sput-object v1, Lcom/applovin/impl/v3;->I8:Lcom/applovin/impl/c5;

    const/16 v1, 0x14

    .line 324
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "avat"

    invoke-static {v3, v1}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v1

    sput-object v1, Lcom/applovin/impl/v3;->J8:Lcom/applovin/impl/c5;

    .line 329
    const-string v1, "uabta"

    invoke-static {v1, v0}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v1

    sput-object v1, Lcom/applovin/impl/v3;->K8:Lcom/applovin/impl/c5;

    .line 334
    const-string v1, "use_initialization_spec_during_init"

    invoke-static {v1, v0}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v1

    sput-object v1, Lcom/applovin/impl/v3;->L8:Lcom/applovin/impl/c5;

    .line 339
    const-string v1, "report_cimp_after_ierr"

    invoke-static {v1, v0}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v1

    sput-object v1, Lcom/applovin/impl/v3;->M8:Lcom/applovin/impl/c5;

    .line 344
    const-string v1, "fail_collection_for_empty_signal"

    invoke-static {v1, v0}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v1

    sput-object v1, Lcom/applovin/impl/v3;->N8:Lcom/applovin/impl/c5;

    .line 349
    const-string v1, "fetch_mediated_ad_gzip"

    invoke-static {v1, v5}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v1

    sput-object v1, Lcom/applovin/impl/v3;->O8:Lcom/applovin/impl/c5;

    .line 350
    const-string v1, "max_postback_gzip"

    invoke-static {v1, v5}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v1

    sput-object v1, Lcom/applovin/impl/v3;->P8:Lcom/applovin/impl/c5;

    .line 355
    const-string v1, "md_endpoint"

    const-string v3, "https://md.applovin.com/"

    invoke-static {v1, v3}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v1

    sput-object v1, Lcom/applovin/impl/v3;->Q8:Lcom/applovin/impl/c5;

    .line 356
    const-string v1, "md_backup_endpoint"

    const-string v3, "https://md.applvn.com/"

    invoke-static {v1, v3}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v1

    sput-object v1, Lcom/applovin/impl/v3;->R8:Lcom/applovin/impl/c5;

    .line 357
    const-string v1, "md_v2"

    invoke-static {v1, v0}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v1

    sput-object v1, Lcom/applovin/impl/v3;->S8:Lcom/applovin/impl/c5;

    .line 367
    const-string v1, "suaaode"

    invoke-static {v1, v0}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/v3;->T8:Lcom/applovin/impl/c5;

    .line 372
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "fcms"

    invoke-static {v1, v0}, Lcom/applovin/impl/c5;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/c5;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/v3;->U8:Lcom/applovin/impl/c5;

    return-void
.end method
