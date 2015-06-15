.class public Lorg/apache/log4j/LogManager;
.super Ljava/lang/Object;


# static fields
.field public static final CONFIGURATOR_CLASS_KEY:Ljava/lang/String; = "log4j.configuratorClass"

.field public static final DEFAULT_CONFIGURATION_FILE:Ljava/lang/String; = "log4j.properties"

.field public static final DEFAULT_CONFIGURATION_KEY:Ljava/lang/String; = "log4j.configuration"

.field public static final DEFAULT_INIT_OVERRIDE_KEY:Ljava/lang/String; = "log4j.defaultInitOverride"

.field static final DEFAULT_XML_CONFIGURATION_FILE:Ljava/lang/String; = "log4j.xml"

.field private static guard:Ljava/lang/Object;

.field private static repositorySelector:Lorg/apache/log4j/spi/RepositorySelector;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    sput-object v3, Lorg/apache/log4j/LogManager;->guard:Ljava/lang/Object;

    new-instance v0, Lorg/apache/log4j/Hierarchy;

    new-instance v1, Lorg/apache/log4j/spi/RootLogger;

    sget-object v2, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-direct {v1, v2}, Lorg/apache/log4j/spi/RootLogger;-><init>(Lorg/apache/log4j/Level;)V

    invoke-direct {v0, v1}, Lorg/apache/log4j/Hierarchy;-><init>(Lorg/apache/log4j/Logger;)V

    new-instance v1, Lorg/apache/log4j/spi/DefaultRepositorySelector;

    invoke-direct {v1, v0}, Lorg/apache/log4j/spi/DefaultRepositorySelector;-><init>(Lorg/apache/log4j/spi/LoggerRepository;)V

    sput-object v1, Lorg/apache/log4j/LogManager;->repositorySelector:Lorg/apache/log4j/spi/RepositorySelector;

    const-string v0, "log4j.defaultInitOverride"

    invoke-static {v0, v3}, Lorg/apache/log4j/helpers/OptionConverter;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    const-string v0, "log4j.configuration"

    invoke-static {v0, v3}, Lorg/apache/log4j/helpers/OptionConverter;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "log4j.configuratorClass"

    invoke-static {v0, v3}, Lorg/apache/log4j/helpers/OptionConverter;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_2

    const-string v0, "log4j.xml"

    invoke-static {v0}, Lorg/apache/log4j/helpers/Loader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "log4j.properties"

    invoke-static {v0}, Lorg/apache/log4j/helpers/Loader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Using URL ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "] for automatic log4j configuration."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lorg/apache/log4j/helpers/OptionConverter;->selectAndConfigure(Ljava/net/URL;Ljava/lang/String;Lorg/apache/log4j/spi/LoggerRepository;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    return-void

    :cond_2
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v1}, Lorg/apache/log4j/helpers/Loader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Error during default initialization"

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not find resource: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, "Default initialization of overridden by log4j.defaultInitOverrideproperty."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exists(Ljava/lang/String;)Lorg/apache/log4j/Logger;
    .locals 1

    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/log4j/spi/LoggerRepository;->exists(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentLoggers()Ljava/util/Enumeration;
    .locals 1

    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/log4j/spi/LoggerRepository;->getCurrentLoggers()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;
    .locals 2

    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;
    .locals 1

    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerFactory;)Lorg/apache/log4j/Logger;
    .locals 1

    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerFactory;)Lorg/apache/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;
    .locals 3

    sget-object v0, Lorg/apache/log4j/LogManager;->repositorySelector:Lorg/apache/log4j/spi/RepositorySelector;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/log4j/spi/DefaultRepositorySelector;

    new-instance v1, Lorg/apache/log4j/spi/NOPLoggerRepository;

    invoke-direct {v1}, Lorg/apache/log4j/spi/NOPLoggerRepository;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/log4j/spi/DefaultRepositorySelector;-><init>(Lorg/apache/log4j/spi/LoggerRepository;)V

    sput-object v0, Lorg/apache/log4j/LogManager;->repositorySelector:Lorg/apache/log4j/spi/RepositorySelector;

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/log4j/LogManager;->guard:Ljava/lang/Object;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class invariant violation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "log4j called after unloading, see http://logging.apache.org/log4j/1.2/faq.html#unload."

    invoke-static {v0}, Lorg/apache/log4j/LogManager;->isLikelySafeScenario(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    sget-object v0, Lorg/apache/log4j/LogManager;->repositorySelector:Lorg/apache/log4j/spi/RepositorySelector;

    invoke-interface {v0}, Lorg/apache/log4j/spi/RepositorySelector;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getRootLogger()Lorg/apache/log4j/Logger;
    .locals 1

    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/log4j/spi/LoggerRepository;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method private static isLikelySafeScenario(Ljava/lang/Exception;)Z
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.apache.catalina.loader.WebappClassLoader.stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resetConfiguration()V
    .locals 1

    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/log4j/spi/LoggerRepository;->resetConfiguration()V

    return-void
.end method

.method public static setRepositorySelector(Lorg/apache/log4j/spi/RepositorySelector;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v0, Lorg/apache/log4j/LogManager;->guard:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/log4j/LogManager;->guard:Ljava/lang/Object;

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempted to reset the LoggerFactory without possessing the guard."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RepositorySelector must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sput-object p1, Lorg/apache/log4j/LogManager;->guard:Ljava/lang/Object;

    sput-object p0, Lorg/apache/log4j/LogManager;->repositorySelector:Lorg/apache/log4j/spi/RepositorySelector;

    return-void
.end method

.method public static shutdown()V
    .locals 1

    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/log4j/spi/LoggerRepository;->shutdown()V

    return-void
.end method
