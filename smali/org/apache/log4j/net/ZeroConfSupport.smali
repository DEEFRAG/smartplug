.class public Lorg/apache/log4j/net/ZeroConfSupport;
.super Ljava/lang/Object;


# static fields
.field static class$java$lang$String:Ljava/lang/Class;

.field static class$java$util$Hashtable:Ljava/lang/Class;

.field static class$java$util$Map:Ljava/lang/Class;

.field private static jmDNS:Ljava/lang/Object;

.field private static jmDNSClass:Ljava/lang/Class;

.field private static serviceInfoClass:Ljava/lang/Class;


# instance fields
.field serviceInfo:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/log4j/net/ZeroConfSupport;->initializeJMDNS()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNS:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/log4j/net/ZeroConfSupport;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNSClass:Ljava/lang/Class;

    const-string v2, "create"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    const-string v0, "using JmDNS version 3 to construct serviceInfo instance"

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/log4j/net/ZeroConfSupport;->buildServiceInfoVersion3(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfo:Ljava/lang/Object;

    :goto_1
    return-void

    :cond_0
    const-string v0, "using JmDNS version 1.0 to construct serviceInfo instance"

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/log4j/net/ZeroConfSupport;->buildServiceInfoVersion1(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfo:Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private buildServiceInfoVersion1(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 6

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1, p4}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    const/4 v0, 0x6

    :try_start_0
    new-array v2, v0, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lorg/apache/log4j/net/ZeroConfSupport;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    :goto_0
    aput-object v0, v2, v3

    const/4 v3, 0x1

    sget-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lorg/apache/log4j/net/ZeroConfSupport;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    :goto_1
    aput-object v0, v2, v3

    const/4 v0, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    const/4 v0, 0x4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    const/4 v3, 0x5

    sget-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$util$Hashtable:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "java.util.Hashtable"

    invoke-static {v0}, Lorg/apache/log4j/net/ZeroConfSupport;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$util$Hashtable:Ljava/lang/Class;

    :goto_2
    aput-object v0, v2, v3

    sget-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfoClass:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "created serviceinfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    :goto_3
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$util$Hashtable:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Unable to construct ServiceInfo instance"

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    const/4 v0, 0x0

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v1, "Unable to get ServiceInfo constructor"

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_2
    move-exception v0

    const-string v1, "Unable to construct ServiceInfo instance"

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_3
    move-exception v0

    const-string v1, "Unable to construct ServiceInfo instance"

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private buildServiceInfoVersion3(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x6

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lorg/apache/log4j/net/ZeroConfSupport;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    :goto_0
    aput-object v0, v1, v2

    const/4 v2, 0x1

    sget-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lorg/apache/log4j/net/ZeroConfSupport;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    :goto_1
    aput-object v0, v1, v2

    const/4 v0, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    const/4 v0, 0x4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    const/4 v2, 0x5

    sget-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$util$Map:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "java.util.Map"

    invoke-static {v0}, Lorg/apache/log4j/net/ZeroConfSupport;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$util$Map:Ljava/lang/Class;

    :goto_2
    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfoClass:Ljava/lang/Class;

    const-string v2, "create"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p4, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "created serviceinfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    :goto_3
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$util$Map:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Unable to invoke create method"

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    const/4 v0, 0x0

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v1, "Unable to find create method"

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_2
    move-exception v0

    const-string v1, "Unable to invoke create method"

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
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

.method private static createJmDNSVersion1()Ljava/lang/Object;
    .locals 2

    :try_start_0
    sget-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNSClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Unable to instantiate JMDNS"

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Unable to instantiate JMDNS"

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static createJmDNSVersion3()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNSClass:Ljava/lang/Class;

    const-string v2, "create"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "Unable to instantiate jmdns class"

    invoke-static {v2, v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "Unable to access constructor"

    invoke-static {v2, v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "Unable to call constructor"

    invoke-static {v2, v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getJMDNSInstance()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNS:Ljava/lang/Object;

    return-object v0
.end method

.method private static initializeJMDNS()Ljava/lang/Object;
    .locals 4

    :try_start_0
    const-string v0, "javax.jmdns.JmDNS"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNSClass:Ljava/lang/Class;

    const-string v0, "javax.jmdns.ServiceInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfoClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNSClass:Ljava/lang/Class;

    const-string v2, "create"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/log4j/net/ZeroConfSupport;->createJmDNSVersion3()Ljava/lang/Object;

    move-result-object v0

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "JmDNS or serviceInfo class not found"

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/log4j/net/ZeroConfSupport;->createJmDNSVersion1()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public advertise()V
    .locals 5

    :try_start_0
    sget-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNSClass:Ljava/lang/Class;

    const-string v1, "registerService"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfoClass:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNS:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfo:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "registered serviceInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to invoke registerService method"

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "No registerService method"

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "Unable to invoke registerService method"

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public unadvertise()V
    .locals 5

    :try_start_0
    sget-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNSClass:Ljava/lang/Class;

    const-string v1, "unregisterService"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfoClass:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNS:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfo:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "unregistered serviceInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to invoke unregisterService method"

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "No unregisterService method"

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "Unable to invoke unregisterService method"

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
