.class Lcom/baidu/frontia/api/FrontiaPush$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/frontia/api/FrontiaPush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$DescribeMessageListenerImpl;

.field final synthetic b:Lcom/baidu/frontia/api/FrontiaPush;

.field private c:Lcom/baidu/frontia/api/FrontiaPushListener$DescribeMessageListener;


# direct methods
.method constructor <init>(Lcom/baidu/frontia/api/FrontiaPush;Lcom/baidu/frontia/api/FrontiaPushListener$DescribeMessageListener;)V
    .locals 1

    iput-object p1, p0, Lcom/baidu/frontia/api/FrontiaPush$b;->b:Lcom/baidu/frontia/api/FrontiaPush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/frontia/api/FrontiaPush$b$1;

    invoke-direct {v0, p0}, Lcom/baidu/frontia/api/FrontiaPush$b$1;-><init>(Lcom/baidu/frontia/api/FrontiaPush$b;)V

    iput-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush$b;->a:Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$DescribeMessageListenerImpl;

    iput-object p2, p0, Lcom/baidu/frontia/api/FrontiaPush$b;->c:Lcom/baidu/frontia/api/FrontiaPushListener$DescribeMessageListener;

    return-void
.end method

.method static synthetic a(Lcom/baidu/frontia/api/FrontiaPush$b;)Lcom/baidu/frontia/api/FrontiaPushListener$DescribeMessageListener;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush$b;->c:Lcom/baidu/frontia/api/FrontiaPushListener$DescribeMessageListener;

    return-object v0
.end method


# virtual methods
.method a()Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$DescribeMessageListenerImpl;
    .locals 1

    iget-object v0, p0, Lcom/baidu/frontia/api/FrontiaPush$b;->a:Lcom/baidu/frontia/module/push/FrontiaPushListenerImpl$DescribeMessageListenerImpl;

    return-object v0
.end method
