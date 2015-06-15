.class public Lorg/slf4j/impl/StaticMDCBinder;
.super Ljava/lang/Object;
.source "StaticMDCBinder.java"


# static fields
.field public static final SINGLETON:Lorg/slf4j/impl/StaticMDCBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lorg/slf4j/impl/StaticMDCBinder;

    invoke-direct {v0}, Lorg/slf4j/impl/StaticMDCBinder;-><init>()V

    sput-object v0, Lorg/slf4j/impl/StaticMDCBinder;->SINGLETON:Lorg/slf4j/impl/StaticMDCBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method public getMDCA()Lorg/slf4j/spi/MDCAdapter;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lorg/slf4j/helpers/NOPMDCAdapter;

    invoke-direct {v0}, Lorg/slf4j/helpers/NOPMDCAdapter;-><init>()V

    return-object v0
.end method

.method public getMDCAdapterClassStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-class v0, Lorg/slf4j/helpers/NOPMDCAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
