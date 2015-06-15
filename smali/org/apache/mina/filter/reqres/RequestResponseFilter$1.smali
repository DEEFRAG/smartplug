.class Lorg/apache/mina/filter/reqres/RequestResponseFilter$1;
.super Ljava/lang/Object;
.source "RequestResponseFilter.java"

# interfaces
.implements Lorg/apache/mina/filter/reqres/ResponseInspectorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/filter/reqres/RequestResponseFilter;-><init>(Lorg/apache/mina/filter/reqres/ResponseInspector;Ljava/util/concurrent/ScheduledExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/filter/reqres/RequestResponseFilter;

.field final synthetic val$responseInspector:Lorg/apache/mina/filter/reqres/ResponseInspector;


# direct methods
.method constructor <init>(Lorg/apache/mina/filter/reqres/RequestResponseFilter;Lorg/apache/mina/filter/reqres/ResponseInspector;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$1;->this$0:Lorg/apache/mina/filter/reqres/RequestResponseFilter;

    iput-object p2, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$1;->val$responseInspector:Lorg/apache/mina/filter/reqres/ResponseInspector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponseInspector()Lorg/apache/mina/filter/reqres/ResponseInspector;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$1;->val$responseInspector:Lorg/apache/mina/filter/reqres/ResponseInspector;

    return-object v0
.end method
