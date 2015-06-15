.class Lcom/baidu/frontia/api/FrontiaPush$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/frontia/api/FrontiaPush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$CommonMessageListenerImpl;

.field final synthetic b:Lcom/baidu/frontia/api/FrontiaPush;

.field private c:Lcom/baidu/frontia/api/FrontiaPushListener$CommonMessageListener;


# direct methods
.method constructor <init>(Lcom/baidu/frontia/api/FrontiaPush;Lcom/baidu/frontia/api/FrontiaPushListener$CommonMessageListener;)V
    .locals 1

    iput-object p1, p0, Lcom/baidu/frontia/api/FrontiaPush$a;->b:Lcom/baidu/frontia/api/FrontiaPush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/frontia/api/FrontiaPush$a$1;

    invoke-direct {v0, p0}, Lcom/baidu/frontia/api/FrontiaPush$a$1;-><init>(Lcom/baidu/frontia/api/FrontiaPush$a;)V

    iput-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush$a;->a:Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$CommonMessageListenerImpl;

    iput-object p2, p0, Lcom/baidu/frontia/api/FrontiaPush$a;->c:Lcom/baidu/frontia/api/FrontiaPushListener$CommonMessageListener;

    return-void
.end method

.method static synthetic a(Lcom/baidu/frontia/api/FrontiaPush$a;)Lcom/baidu/frontia/api/FrontiaPushListener$CommonMessageListener;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush$a;->c:Lcom/baidu/frontia/api/FrontiaPushListener$CommonMessageListener;

    return-object v0
.end method


# virtual methods
.method a()Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$CommonMessageListenerImpl;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush$a;->a:Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$CommonMessageListenerImpl;

    return-object v0
.end method
