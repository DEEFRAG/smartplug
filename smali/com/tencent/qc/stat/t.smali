.class Lcom/tencent/qc/stat/t;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/tencent/qc/stat/event/Event;

.field private b:Lcom/tencent/qc/stat/StatReportStrategy;


# direct methods
.method public constructor <init>(Lcom/tencent/qc/stat/event/Event;)V
    .locals 1

    .prologue
    .line 839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 846
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qc/stat/t;->b:Lcom/tencent/qc/stat/StatReportStrategy;

    .line 840
    iput-object p1, p0, Lcom/tencent/qc/stat/t;->a:Lcom/tencent/qc/stat/event/Event;

    .line 841
    invoke-static {}, Lcom/tencent/qc/stat/StatConfig;->a()Lcom/tencent/qc/stat/StatReportStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qc/stat/t;->b:Lcom/tencent/qc/stat/StatReportStrategy;

    .line 842
    return-void
.end method

.method static synthetic a(Lcom/tencent/qc/stat/t;)Lcom/tencent/qc/stat/event/Event;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/tencent/qc/stat/t;->a:Lcom/tencent/qc/stat/event/Event;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 852
    invoke-static {}, Lcom/tencent/qc/stat/l;->b()Lcom/tencent/qc/stat/l;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qc/stat/t;->a:Lcom/tencent/qc/stat/event/Event;

    new-instance v2, Lcom/tencent/qc/stat/a;

    invoke-direct {v2, p0}, Lcom/tencent/qc/stat/a;-><init>(Lcom/tencent/qc/stat/t;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qc/stat/l;->a(Lcom/tencent/qc/stat/event/Event;Lcom/tencent/qc/stat/q;)V

    .line 864
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 868
    invoke-static {}, Lcom/tencent/qc/stat/StatConfig;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 871
    :cond_1
    invoke-static {}, Lcom/tencent/qc/stat/StatService;->b()Lcom/tencent/qc/stat/common/StatLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lauch stat task in thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qc/stat/common/StatLogger;->b(Ljava/lang/Object;)V

    .line 873
    iget-object v0, p0, Lcom/tencent/qc/stat/t;->a:Lcom/tencent/qc/stat/event/Event;

    invoke-virtual {v0}, Lcom/tencent/qc/stat/event/Event;->c()Landroid/content/Context;

    move-result-object v0

    .line 876
    invoke-static {v0}, Lcom/tencent/qc/stat/common/StatCommonHelper;->h(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 877
    invoke-static {v0}, Lcom/tencent/qc/stat/StatStore;->a(Landroid/content/Context;)Lcom/tencent/qc/stat/StatStore;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qc/stat/t;->a:Lcom/tencent/qc/stat/event/Event;

    invoke-virtual {v0, v1, v3}, Lcom/tencent/qc/stat/StatStore;->b(Lcom/tencent/qc/stat/event/Event;Lcom/tencent/qc/stat/q;)V

    goto :goto_0

    .line 880
    :cond_2
    invoke-static {}, Lcom/tencent/qc/stat/StatConfig;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/tencent/qc/stat/common/StatCommonHelper;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 882
    sget-object v1, Lcom/tencent/qc/stat/StatReportStrategy;->a:Lcom/tencent/qc/stat/StatReportStrategy;

    iput-object v1, p0, Lcom/tencent/qc/stat/t;->b:Lcom/tencent/qc/stat/StatReportStrategy;

    .line 885
    :cond_3
    sget-object v1, Lcom/tencent/qc/stat/p;->a:[I

    iget-object v2, p0, Lcom/tencent/qc/stat/t;->b:Lcom/tencent/qc/stat/StatReportStrategy;

    invoke-virtual {v2}, Lcom/tencent/qc/stat/StatReportStrategy;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 947
    invoke-static {}, Lcom/tencent/qc/stat/StatService;->b()Lcom/tencent/qc/stat/common/StatLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid stat strategy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/qc/stat/StatConfig;->a()Lcom/tencent/qc/stat/StatReportStrategy;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qc/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 887
    :pswitch_0
    invoke-direct {p0}, Lcom/tencent/qc/stat/t;->a()V

    goto :goto_0

    .line 891
    :pswitch_1
    invoke-static {v0}, Lcom/tencent/qc/stat/common/StatCommonHelper;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 892
    invoke-direct {p0}, Lcom/tencent/qc/stat/t;->a()V

    goto/16 :goto_0

    .line 894
    :cond_4
    invoke-static {v0}, Lcom/tencent/qc/stat/StatStore;->a(Landroid/content/Context;)Lcom/tencent/qc/stat/StatStore;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qc/stat/t;->a:Lcom/tencent/qc/stat/event/Event;

    invoke-virtual {v0, v1, v3}, Lcom/tencent/qc/stat/StatStore;->b(Lcom/tencent/qc/stat/event/Event;Lcom/tencent/qc/stat/q;)V

    goto/16 :goto_0

    .line 900
    :pswitch_2
    invoke-static {v0}, Lcom/tencent/qc/stat/StatStore;->a(Landroid/content/Context;)Lcom/tencent/qc/stat/StatStore;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qc/stat/t;->a:Lcom/tencent/qc/stat/event/Event;

    invoke-virtual {v0, v1, v3}, Lcom/tencent/qc/stat/StatStore;->b(Lcom/tencent/qc/stat/event/Event;Lcom/tencent/qc/stat/q;)V

    goto/16 :goto_0

    .line 904
    :pswitch_3
    invoke-static {v0}, Lcom/tencent/qc/stat/StatStore;->a(Landroid/content/Context;)Lcom/tencent/qc/stat/StatStore;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qc/stat/t;->a:Lcom/tencent/qc/stat/event/Event;

    new-instance v3, Lcom/tencent/qc/stat/k;

    invoke-direct {v3, p0, v0}, Lcom/tencent/qc/stat/k;-><init>(Lcom/tencent/qc/stat/t;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qc/stat/StatStore;->b(Lcom/tencent/qc/stat/event/Event;Lcom/tencent/qc/stat/q;)V

    goto/16 :goto_0

    .line 930
    :pswitch_4
    :try_start_0
    invoke-static {v0}, Lcom/tencent/qc/stat/StatStore;->a(Landroid/content/Context;)Lcom/tencent/qc/stat/StatStore;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qc/stat/t;->a:Lcom/tencent/qc/stat/event/Event;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qc/stat/StatStore;->b(Lcom/tencent/qc/stat/event/Event;Lcom/tencent/qc/stat/q;)V

    .line 931
    const-string v1, "last_period_ts"

    .line 932
    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/qc/stat/common/StatPreferences;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 934
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 935
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 936
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 937
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Lcom/tencent/qc/stat/StatConfig;->l()I

    move-result v2

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    .line 938
    invoke-static {v0}, Lcom/tencent/qc/stat/StatStore;->a(Landroid/content/Context;)Lcom/tencent/qc/stat/StatStore;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/tencent/qc/stat/StatStore;->a(I)V

    .line 939
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/qc/stat/common/StatPreferences;->b(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 941
    :catch_0
    move-exception v0

    .line 942
    invoke-static {}, Lcom/tencent/qc/stat/StatService;->b()Lcom/tencent/qc/stat/common/StatLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qc/stat/common/StatLogger;->b(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 885
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
