.class Lcom/baidu/frontia/api/FrontiaPush$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/frontia/api/FrontiaPush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field a:Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;

.field final synthetic b:Lcom/baidu/frontia/api/FrontiaPush;

.field private c:Lcom/baidu/frontia/api/FrontiaPushListener$PushMessageListener;


# direct methods
.method constructor <init>(Lcom/baidu/frontia/api/FrontiaPush;Lcom/baidu/frontia/api/FrontiaPushListener$PushMessageListener;)V
    .locals 1

    iput-object p1, p0, Lcom/baidu/frontia/api/FrontiaPush$d;->b:Lcom/baidu/frontia/api/FrontiaPush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/frontia/api/FrontiaPush$d$1;

    invoke-direct {v0, p0}, Lcom/baidu/frontia/api/FrontiaPush$d$1;-><init>(Lcom/baidu/frontia/api/FrontiaPush$d;)V

    iput-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush$d;->a:Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;

    iput-object p2, p0, Lcom/baidu/frontia/api/FrontiaPush$d;->c:Lcom/baidu/frontia/api/FrontiaPushListener$PushMessageListener;

    return-void
.end method

.method static synthetic a(Lcom/baidu/frontia/api/FrontiaPush$d;)Lcom/baidu/frontia/api/FrontiaPushListener$PushMessageListener;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush$d;->c:Lcom/baidu/frontia/api/FrontiaPushListener$PushMessageListener;

    return-object v0
.end method


# virtual methods
.method a()Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush$d;->a:Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$PushMessageListenerImpl;

    return-object v0
.end method
