.class public final Lorg/apache/log4j/helpers/MDCKeySetExtractor;
.super Ljava/lang/Object;


# static fields
.field public static final INSTANCE:Lorg/apache/log4j/helpers/MDCKeySetExtractor;

.field static class$org$apache$log4j$pattern$LogEvent:Ljava/lang/Class;

.field static class$org$apache$log4j$spi$LoggingEvent:Ljava/lang/Class;


# instance fields
.field private final getKeySetMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/log4j/helpers/MDCKeySetExtractor;

    invoke-direct {v0}, Lorg/apache/log4j/helpers/MDCKeySetExtractor;-><init>()V

    sput-object v0, Lorg/apache/log4j/helpers/MDCKeySetExtractor;->INSTANCE:Lorg/apache/log4j/helpers/MDCKeySetExtractor;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    sget-object v1, Lorg/apache/log4j/helpers/MDCKeySetExtractor;->class$org$apache$log4j$spi$LoggingEvent:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.apache.log4j.spi.LoggingEvent"

    invoke-static {v1}, Lorg/apache/log4j/helpers/MDCKeySetExtractor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/helpers/MDCKeySetExtractor;->class$org$apache$log4j$spi$LoggingEvent:Ljava/lang/Class;

    :goto_0
    const-string v2, "getPropertyKeySet"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/apache/log4j/helpers/MDCKeySetExtractor;->getKeySetMethod:Ljava/lang/reflect/Method;

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lorg/apache/log4j/helpers/MDCKeySetExtractor;->class$org$apache$log4j$spi$LoggingEvent:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getPropertyKeySet(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/log4j/helpers/MDCKeySetExtractor;->getKeySetMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/log4j/helpers/MDCKeySetExtractor;->getKeySetMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    sget-object v0, Lorg/apache/log4j/helpers/MDCKeySetExtractor;->class$org$apache$log4j$pattern$LogEvent:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "org.apache.log4j.pattern.LogEvent"

    invoke-static {v0}, Lorg/apache/log4j/helpers/MDCKeySetExtractor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/helpers/MDCKeySetExtractor;->class$org$apache$log4j$pattern$LogEvent:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x6

    aget-byte v0, v2, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    aget-byte v0, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v0, v4, :cond_5

    :cond_1
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    add-int/lit8 v4, v0, 0x8

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    sget-object v0, Lorg/apache/log4j/helpers/MDCKeySetExtractor;->class$org$apache$log4j$pattern$LogEvent:Ljava/lang/Class;

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lorg/apache/log4j/pattern/LogEvent;

    if-eqz v3, :cond_4

    check-cast v0, Lorg/apache/log4j/pattern/LogEvent;

    invoke-virtual {v0}, Lorg/apache/log4j/pattern/LogEvent;->getPropertyKeySet()Ljava/util/Set;

    move-result-object v0

    :goto_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method
