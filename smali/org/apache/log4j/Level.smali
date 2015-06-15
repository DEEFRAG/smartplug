.class public Lorg/apache/log4j/Level;
.super Lorg/apache/log4j/Priority;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ALL:Lorg/apache/log4j/Level;

.field public static final DEBUG:Lorg/apache/log4j/Level;

.field public static final ERROR:Lorg/apache/log4j/Level;

.field public static final FATAL:Lorg/apache/log4j/Level;

.field public static final INFO:Lorg/apache/log4j/Level;

.field public static final OFF:Lorg/apache/log4j/Level;

.field public static final TRACE:Lorg/apache/log4j/Level;

.field public static final TRACE_INT:I = 0x1388

.field public static final WARN:Lorg/apache/log4j/Level;

.field static class$org$apache$log4j$Level:Ljava/lang/Class; = null

.field static final serialVersionUID:J = 0x3073071f1f02c436L


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x7

    new-instance v0, Lorg/apache/log4j/Level;

    const v1, 0x7fffffff

    const-string v2, "OFF"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/Level;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/Level;->OFF:Lorg/apache/log4j/Level;

    new-instance v0, Lorg/apache/log4j/Level;

    const v1, 0xc350

    const-string v2, "FATAL"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/Level;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    new-instance v0, Lorg/apache/log4j/Level;

    const v1, 0x9c40

    const-string v2, "ERROR"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/Level;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    new-instance v0, Lorg/apache/log4j/Level;

    const/16 v1, 0x7530

    const-string v2, "WARN"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/Level;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    new-instance v0, Lorg/apache/log4j/Level;

    const/16 v1, 0x4e20

    const-string v2, "INFO"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/Level;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    new-instance v0, Lorg/apache/log4j/Level;

    const/16 v1, 0x2710

    const-string v2, "DEBUG"

    invoke-direct {v0, v1, v2, v4}, Lorg/apache/log4j/Level;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    new-instance v0, Lorg/apache/log4j/Level;

    const/16 v1, 0x1388

    const-string v2, "TRACE"

    invoke-direct {v0, v1, v2, v4}, Lorg/apache/log4j/Level;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/Level;->TRACE:Lorg/apache/log4j/Level;

    new-instance v0, Lorg/apache/log4j/Level;

    const/high16 v1, -0x80000000

    const-string v2, "ALL"

    invoke-direct {v0, v1, v2, v4}, Lorg/apache/log4j/Level;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/Level;->ALL:Lorg/apache/log4j/Level;

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/log4j/Priority;-><init>(ILjava/lang/String;I)V

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

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/log4j/Priority;->level:I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/log4j/Priority;->syslogEquivalent:I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/Priority;->levelStr:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/log4j/Priority;->levelStr:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/log4j/Priority;->levelStr:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v0, Lorg/apache/log4j/Level;->class$org$apache$log4j$Level:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "org.apache.log4j.Level"

    invoke-static {v0}, Lorg/apache/log4j/Level;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/Level;->class$org$apache$log4j$Level:Ljava/lang/Class;

    :goto_0
    if-ne v1, v0, :cond_0

    iget v0, p0, Lorg/apache/log4j/Priority;->level:I

    invoke-static {v0}, Lorg/apache/log4j/Level;->toLevel(I)Lorg/apache/log4j/Level;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    sget-object v0, Lorg/apache/log4j/Level;->class$org$apache$log4j$Level:Ljava/lang/Class;

    goto :goto_0
.end method

.method public static toLevel(I)Lorg/apache/log4j/Level;
    .locals 1

    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p0, v0}, Lorg/apache/log4j/Level;->toLevel(ILorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object v0

    return-object v0
.end method

.method public static toLevel(ILorg/apache/log4j/Level;)Lorg/apache/log4j/Level;
    .locals 0

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return-object p1

    :sswitch_0
    sget-object p1, Lorg/apache/log4j/Level;->ALL:Lorg/apache/log4j/Level;

    goto :goto_0

    :sswitch_1
    sget-object p1, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    goto :goto_0

    :sswitch_2
    sget-object p1, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    goto :goto_0

    :sswitch_3
    sget-object p1, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    goto :goto_0

    :sswitch_4
    sget-object p1, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    goto :goto_0

    :sswitch_5
    sget-object p1, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    goto :goto_0

    :sswitch_6
    sget-object p1, Lorg/apache/log4j/Level;->OFF:Lorg/apache/log4j/Level;

    goto :goto_0

    :sswitch_7
    sget-object p1, Lorg/apache/log4j/Level;->TRACE:Lorg/apache/log4j/Level;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x1388 -> :sswitch_7
        0x2710 -> :sswitch_1
        0x4e20 -> :sswitch_2
        0x7530 -> :sswitch_3
        0x9c40 -> :sswitch_4
        0xc350 -> :sswitch_5
        0x7fffffff -> :sswitch_6
    .end sparse-switch
.end method

.method public static toLevel(Ljava/lang/String;)Lorg/apache/log4j/Level;
    .locals 1

    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p0, v0}, Lorg/apache/log4j/Level;->toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object v0

    return-object v0
.end method

.method public static toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lorg/apache/log4j/Level;->ALL:Lorg/apache/log4j/Level;

    goto :goto_0

    :cond_2
    const-string v1, "DEBUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p1, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    goto :goto_0

    :cond_3
    const-string v1, "INFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object p1, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    goto :goto_0

    :cond_4
    const-string v1, "WARN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object p1, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    goto :goto_0

    :cond_5
    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object p1, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    goto :goto_0

    :cond_6
    const-string v1, "FATAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object p1, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    goto :goto_0

    :cond_7
    const-string v1, "OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object p1, Lorg/apache/log4j/Level;->OFF:Lorg/apache/log4j/Level;

    goto :goto_0

    :cond_8
    const-string v1, "TRACE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object p1, Lorg/apache/log4j/Level;->TRACE:Lorg/apache/log4j/Level;

    goto :goto_0

    :cond_9
    const-string v1, "\u0130NFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget v0, p0, Lorg/apache/log4j/Priority;->level:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget v0, p0, Lorg/apache/log4j/Priority;->syslogEquivalent:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Lorg/apache/log4j/Priority;->levelStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    return-void
.end method
