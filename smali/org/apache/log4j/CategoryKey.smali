.class Lorg/apache/log4j/CategoryKey;
.super Ljava/lang/Object;


# static fields
.field static class$org$apache$log4j$CategoryKey:Ljava/lang/Class;


# instance fields
.field hashCache:I

.field name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/CategoryKey;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/apache/log4j/CategoryKey;->hashCache:I

    return-void
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
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_2

    sget-object v0, Lorg/apache/log4j/CategoryKey;->class$org$apache$log4j$CategoryKey:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "org.apache.log4j.CategoryKey"

    invoke-static {v0}, Lorg/apache/log4j/CategoryKey;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/CategoryKey;->class$org$apache$log4j$CategoryKey:Ljava/lang/Class;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/log4j/CategoryKey;->name:Ljava/lang/String;

    check-cast p1, Lorg/apache/log4j/CategoryKey;

    iget-object v1, p1, Lorg/apache/log4j/CategoryKey;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/log4j/CategoryKey;->class$org$apache$log4j$CategoryKey:Ljava/lang/Class;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lorg/apache/log4j/CategoryKey;->hashCache:I

    return v0
.end method
