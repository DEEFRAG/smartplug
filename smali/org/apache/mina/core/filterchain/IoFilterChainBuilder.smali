.class public interface abstract Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;
.super Ljava/lang/Object;
.source "IoFilterChainBuilder.java"


# static fields
.field public static final NOOP:Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterChainBuilder$1;

    invoke-direct {v0}, Lorg/apache/mina/core/filterchain/IoFilterChainBuilder$1;-><init>()V

    sput-object v0, Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;->NOOP:Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    return-void
.end method


# virtual methods
.method public abstract buildFilterChain(Lorg/apache/mina/core/filterchain/IoFilterChain;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
