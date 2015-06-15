.class Lcom/baidu/frontia/api/FrontiaPush$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/frontia/api/FrontiaPush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$ListMessageListenerImpl;

.field final synthetic b:Lcom/baidu/frontia/api/FrontiaPush;

.field private c:Lcom/baidu/frontia/api/FrontiaPushListener$ListMessageListener;


# direct methods
.method constructor <init>(Lcom/baidu/frontia/api/FrontiaPush;Lcom/baidu/frontia/api/FrontiaPushListener$ListMessageListener;)V
    .locals 1

    iput-object p1, p0, Lcom/baidu/frontia/api/FrontiaPush$c;->b:Lcom/baidu/frontia/api/FrontiaPush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/frontia/api/FrontiaPush$c$1;

    invoke-direct {v0, p0}, Lcom/baidu/frontia/api/FrontiaPush$c$1;-><init>(Lcom/baidu/frontia/api/FrontiaPush$c;)V

    iput-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush$c;->a:Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$ListMessageListenerImpl;

    iput-object p2, p0, Lcom/baidu/frontia/api/FrontiaPush$c;->c:Lcom/baidu/frontia/api/FrontiaPushListener$ListMessageListener;

    return-void
.end method

.method static synthetic a(Lcom/baidu/frontia/api/FrontiaPush$c;)Lcom/baidu/frontia/api/FrontiaPushListener$ListMessageListener;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush$c;->c:Lcom/baidu/frontia/api/FrontiaPushListener$ListMessageListener;

    return-object v0
.end method


# virtual methods
.method a()Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$ListMessageListenerImpl;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush$c;->a:Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$ListMessageListenerImpl;

    return-object v0
.end method
