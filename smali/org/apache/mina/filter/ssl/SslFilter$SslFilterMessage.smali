.class public Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;
.super Ljava/lang/Object;
.source "SslFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/ssl/SslFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SslFilterMessage"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 763
    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;->name:Ljava/lang/String;

    .line 764
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/mina/filter/ssl/SslFilter$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/mina/filter/ssl/SslFilter$1;

    .prologue
    .line 759
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;->name:Ljava/lang/String;

    return-object v0
.end method
