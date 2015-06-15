.class Lcom/tencent/qc/stat/common/c;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Landroid/util/DisplayMetrics;

.field d:I

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "0.6.12"

    iput-object v0, p0, Lcom/tencent/qc/stat/common/c;->b:Ljava/lang/String;

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/tencent/qc/stat/common/c;->d:I

    .line 45
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qc/stat/common/c;->e:Ljava/lang/String;

    .line 49
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qc/stat/common/c;->f:Ljava/lang/String;

    .line 53
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qc/stat/common/c;->g:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qc/stat/common/c;->k:I

    .line 84
    invoke-static {p1}, Lcom/tencent/qc/stat/common/StatCommonHelper;->d(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qc/stat/common/c;->c:Landroid/util/DisplayMetrics;

    .line 85
    invoke-static {p1}, Lcom/tencent/qc/stat/common/StatCommonHelper;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qc/stat/common/c;->a:Ljava/lang/String;

    .line 86
    invoke-static {p1}, Lcom/tencent/qc/stat/StatConfig;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qc/stat/common/c;->h:Ljava/lang/String;

    .line 87
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 89
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qc/stat/common/c;->i:Ljava/lang/String;

    .line 90
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qc/stat/common/c;->j:Ljava/lang/String;

    .line 91
    invoke-static {p1}, Lcom/tencent/qc/stat/common/StatCommonHelper;->q(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qc/stat/common/c;->k:I

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/tencent/qc/stat/common/b;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/tencent/qc/stat/common/c;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 96
    const-string v0, "sr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/qc/stat/common/c;->c:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qc/stat/common/c;->c:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string v0, "av"

    iget-object v1, p0, Lcom/tencent/qc/stat/common/c;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/qc/stat/common/StatCommonHelper;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "ch"

    iget-object v1, p0, Lcom/tencent/qc/stat/common/c;->h:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/qc/stat/common/StatCommonHelper;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "mf"

    iget-object v1, p0, Lcom/tencent/qc/stat/common/c;->f:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/qc/stat/common/StatCommonHelper;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "sv"

    iget-object v1, p0, Lcom/tencent/qc/stat/common/c;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/qc/stat/common/StatCommonHelper;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "ov"

    iget v1, p0, Lcom/tencent/qc/stat/common/c;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/tencent/qc/stat/common/StatCommonHelper;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "os"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 104
    const-string v0, "op"

    iget-object v1, p0, Lcom/tencent/qc/stat/common/c;->i:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/qc/stat/common/StatCommonHelper;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "lg"

    iget-object v1, p0, Lcom/tencent/qc/stat/common/c;->g:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/qc/stat/common/StatCommonHelper;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "md"

    iget-object v1, p0, Lcom/tencent/qc/stat/common/c;->e:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/qc/stat/common/StatCommonHelper;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "tz"

    iget-object v1, p0, Lcom/tencent/qc/stat/common/c;->j:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/qc/stat/common/StatCommonHelper;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget v0, p0, Lcom/tencent/qc/stat/common/c;->k:I

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "jb"

    iget v1, p0, Lcom/tencent/qc/stat/common/c;->k:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 111
    :cond_0
    const-string v0, "sd"

    invoke-static {}, Lcom/tencent/qc/stat/common/StatCommonHelper;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/tencent/qc/stat/common/StatCommonHelper;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method
