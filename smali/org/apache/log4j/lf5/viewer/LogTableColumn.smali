.class public Lorg/apache/log4j/lf5/viewer/LogTableColumn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CATEGORY:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

.field public static final DATE:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

.field public static final LEVEL:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

.field public static final LOCATION:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

.field public static final MESSAGE:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

.field public static final MESSAGE_NUM:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

.field public static final NDC:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

.field public static final THREAD:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

.field public static final THROWN:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

.field private static _log4JColumns:[Lorg/apache/log4j/lf5/viewer/LogTableColumn; = null

.field private static _logTableColumnMap:Ljava/util/Map; = null

.field private static final serialVersionUID:J = -0x3b56cab007a951e3L


# instance fields
.field protected _label:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const-string v2, "Date"

    invoke-direct {v1, v2}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->DATE:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const-string v2, "Thread"

    invoke-direct {v1, v2}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->THREAD:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const-string v2, "Message #"

    invoke-direct {v1, v2}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->MESSAGE_NUM:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const-string v2, "Level"

    invoke-direct {v1, v2}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->LEVEL:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const-string v2, "NDC"

    invoke-direct {v1, v2}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->NDC:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const-string v2, "Category"

    invoke-direct {v1, v2}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->CATEGORY:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const-string v2, "Message"

    invoke-direct {v1, v2}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->MESSAGE:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const-string v2, "Location"

    invoke-direct {v1, v2}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->LOCATION:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const-string v2, "Thrown"

    invoke-direct {v1, v2}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->THROWN:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const/16 v1, 0x9

    new-array v1, v1, [Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    sget-object v2, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->DATE:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    sget-object v3, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->THREAD:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->MESSAGE_NUM:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->LEVEL:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->NDC:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->CATEGORY:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->MESSAGE:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->LOCATION:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->THROWN:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    aput-object v3, v1, v2

    sput-object v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_log4JColumns:[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_logTableColumnMap:Ljava/util/Map;

    :goto_0
    sget-object v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_log4JColumns:[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_logTableColumnMap:Ljava/util/Map;

    sget-object v2, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_log4JColumns:[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->getLabel()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_log4JColumns:[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_label:Ljava/lang/String;

    return-void
.end method

.method public static getLogTableColumnArray()[Lorg/apache/log4j/lf5/viewer/LogTableColumn;
    .locals 1

    sget-object v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_log4JColumns:[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    return-object v0
.end method

.method public static getLogTableColumns()Ljava/util/List;
    .locals 1

    sget-object v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_log4JColumns:[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/log4j/lf5/viewer/LogTableColumn;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/log4j/lf5/viewer/LogTableColumnFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_logTableColumnMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error while trying to parse ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ") into"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " a LogTableColumn."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogTableColumnFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/log4j/lf5/viewer/LogTableColumnFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->getLabel()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_label:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_label:Ljava/lang/String;

    return-object v0
.end method
