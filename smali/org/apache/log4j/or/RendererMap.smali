.class public Lorg/apache/log4j/or/RendererMap;
.super Ljava/lang/Object;


# static fields
.field static class$org$apache$log4j$or$ObjectRenderer:Ljava/lang/Class;

.field static defaultRenderer:Lorg/apache/log4j/or/ObjectRenderer;


# instance fields
.field map:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/log4j/or/DefaultRenderer;

    invoke-direct {v0}, Lorg/apache/log4j/or/DefaultRenderer;-><init>()V

    sput-object v0, Lorg/apache/log4j/or/RendererMap;->defaultRenderer:Lorg/apache/log4j/or/ObjectRenderer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/or/RendererMap;->map:Ljava/util/Hashtable;

    return-void
.end method

.method public static addRenderer(Lorg/apache/log4j/spi/RendererSupport;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Rendering class: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "], Rendered class: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    sget-object v0, Lorg/apache/log4j/or/RendererMap;->class$org$apache$log4j$or$ObjectRenderer:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.or.ObjectRenderer"

    invoke-static {v0}, Lorg/apache/log4j/or/RendererMap;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/or/RendererMap;->class$org$apache$log4j$or$ObjectRenderer:Ljava/lang/Class;

    :goto_0
    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/or/ObjectRenderer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Could not instantiate renderer ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    sget-object v0, Lorg/apache/log4j/or/RendererMap;->class$org$apache$log4j$or$ObjectRenderer:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p1}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Lorg/apache/log4j/spi/RendererSupport;->setRenderer(Ljava/lang/Class;Lorg/apache/log4j/or/ObjectRenderer;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not find class ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

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
.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/or/RendererMap;->map:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public findAndRender(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/or/RendererMap;->get(Ljava/lang/Class;)Lorg/apache/log4j/or/ObjectRenderer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/log4j/or/ObjectRenderer;->doRender(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public get(Ljava/lang/Class;)Lorg/apache/log4j/or/ObjectRenderer;
    .locals 1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/apache/log4j/or/RendererMap;->map:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/or/ObjectRenderer;

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/log4j/or/RendererMap;->searchInterfaces(Ljava/lang/Class;)Lorg/apache/log4j/or/ObjectRenderer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/apache/log4j/or/RendererMap;->defaultRenderer:Lorg/apache/log4j/or/ObjectRenderer;

    goto :goto_1
.end method

.method public get(Ljava/lang/Object;)Lorg/apache/log4j/or/ObjectRenderer;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/or/RendererMap;->get(Ljava/lang/Class;)Lorg/apache/log4j/or/ObjectRenderer;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultRenderer()Lorg/apache/log4j/or/ObjectRenderer;
    .locals 1

    sget-object v0, Lorg/apache/log4j/or/RendererMap;->defaultRenderer:Lorg/apache/log4j/or/ObjectRenderer;

    return-object v0
.end method

.method public put(Ljava/lang/Class;Lorg/apache/log4j/or/ObjectRenderer;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/or/RendererMap;->map:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method searchInterfaces(Ljava/lang/Class;)Lorg/apache/log4j/or/ObjectRenderer;
    .locals 3

    iget-object v0, p0, Lorg/apache/log4j/or/RendererMap;->map:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/or/ObjectRenderer;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    const/4 v0, 0x0

    :goto_1
    array-length v1, v2

    if-ge v0, v1, :cond_2

    aget-object v1, v2, v0

    invoke-virtual {p0, v1}, Lorg/apache/log4j/or/RendererMap;->searchInterfaces(Ljava/lang/Class;)Lorg/apache/log4j/or/ObjectRenderer;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
