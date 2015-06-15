.class public Lorg/apache/log4j/net/SimpleSocketServer;
.super Ljava/lang/Object;


# static fields
.field static cat:Lorg/apache/log4j/Logger;

.field static class$org$apache$log4j$net$SimpleSocketServer:Ljava/lang/Class;

.field static port:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/log4j/net/SimpleSocketServer;->class$org$apache$log4j$net$SimpleSocketServer:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.net.SimpleSocketServer"

    invoke-static {v0}, Lorg/apache/log4j/net/SimpleSocketServer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/SimpleSocketServer;->class$org$apache$log4j$net$SimpleSocketServer:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/SimpleSocketServer;->cat:Lorg/apache/log4j/Logger;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/log4j/net/SimpleSocketServer;->class$org$apache$log4j$net$SimpleSocketServer:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method static init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/apache/log4j/net/SimpleSocketServer;->port:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, ".xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/log4j/xml/DOMConfigurator;->configure(Ljava/lang/String;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Could not interpret port number ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/net/SimpleSocketServer;->usage(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/apache/log4j/PropertyConfigurator;->configure(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5

    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-static {v0, v1}, Lorg/apache/log4j/net/SimpleSocketServer;->init(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_0
    sget-object v0, Lorg/apache/log4j/net/SimpleSocketServer;->cat:Lorg/apache/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Listening on port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget v2, Lorg/apache/log4j/net/SimpleSocketServer;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;)V

    new-instance v0, Ljava/net/ServerSocket;

    sget v1, Lorg/apache/log4j/net/SimpleSocketServer;->port:I

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    :goto_1
    sget-object v1, Lorg/apache/log4j/net/SimpleSocketServer;->cat:Lorg/apache/log4j/Logger;

    const-string v2, "Waiting to accept a new client."

    invoke-virtual {v1, v2}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    sget-object v2, Lorg/apache/log4j/net/SimpleSocketServer;->cat:Lorg/apache/log4j/Logger;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Connected to client at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;)V

    sget-object v2, Lorg/apache/log4j/net/SimpleSocketServer;->cat:Lorg/apache/log4j/Logger;

    const-string v3, "Starting new socket node."

    invoke-virtual {v2, v3}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lorg/apache/log4j/net/SocketNode;

    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lorg/apache/log4j/net/SocketNode;-><init>(Ljava/net/Socket;Lorg/apache/log4j/spi/LoggerRepository;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "SimpleSocketServer-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget v4, Lorg/apache/log4j/net/SimpleSocketServer;->port:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_0
    const-string v0, "Wrong number of arguments."

    invoke-static {v0}, Lorg/apache/log4j/net/SimpleSocketServer;->usage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static usage(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Usage: java "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v0, Lorg/apache/log4j/net/SimpleSocketServer;->class$org$apache$log4j$net$SimpleSocketServer:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.net.SimpleSocketServer"

    invoke-static {v0}, Lorg/apache/log4j/net/SimpleSocketServer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/SimpleSocketServer;->class$org$apache$log4j$net$SimpleSocketServer:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " port configFile"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_0
    sget-object v0, Lorg/apache/log4j/net/SimpleSocketServer;->class$org$apache$log4j$net$SimpleSocketServer:Ljava/lang/Class;

    goto :goto_0
.end method
