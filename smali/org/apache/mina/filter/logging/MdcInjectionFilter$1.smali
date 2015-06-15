.class Lorg/apache/mina/filter/logging/MdcInjectionFilter$1;
.super Ljava/lang/ThreadLocal;
.source "MdcInjectionFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/logging/MdcInjectionFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/filter/logging/MdcInjectionFilter;


# direct methods
.method constructor <init>(Lorg/apache/mina/filter/logging/MdcInjectionFilter;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$1;->this$0:Lorg/apache/mina/filter/logging/MdcInjectionFilter;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$1;->initialValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
