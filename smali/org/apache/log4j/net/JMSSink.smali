.class public Lorg/apache/log4j/net/JMSSink;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/jms/MessageListener;


# static fields
.field static class$org$apache$log4j$net$JMSSink:Ljava/lang/Class;

.field static logger:Lorg/apache/log4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/log4j/net/JMSSink;->class$org$apache$log4j$net$JMSSink:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.net.JMSSink"

    invoke-static {v0}, Lorg/apache/log4j/net/JMSSink;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/JMSSink;->class$org$apache$log4j$net$JMSSink:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/JMSSink;->logger:Lorg/apache/log4j/Logger;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/log4j/net/JMSSink;->class$org$apache$log4j$net$JMSSink:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v1, Ljavax/naming/InitialContext;

    invoke-direct {v1}, Ljavax/naming/InitialContext;-><init>()V

    invoke-static {v1, p1}, Lorg/apache/log4j/net/JMSSink;->lookup(Ljavax/naming/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jms/TopicConnectionFactory;

    invoke-interface {v0, p3, p4}, Ljavax/jms/TopicConnectionFactory;->createTopicConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/jms/TopicConnection;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jms/Connection;->start()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Ljavax/jms/TopicConnection;->createTopicSession(ZI)Ljavax/jms/TopicSession;

    move-result-object v2

    invoke-interface {v1, p2}, Ljavax/naming/Context;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jms/Topic;

    invoke-interface {v2, v0}, Ljavax/jms/TopicSession;->createSubscriber(Ljavax/jms/Topic;)Ljavax/jms/TopicSubscriber;

    move-result-object v0

    invoke-interface {v0, p0}, Ljavax/jms/MessageConsumer;->setMessageListener(Ljavax/jms/MessageListener;)V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lorg/apache/log4j/net/JMSSink;->logger:Lorg/apache/log4j/Logger;

    const-string v2, "Could not read JMS message."

    invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/Category;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lorg/apache/log4j/net/JMSSink;->logger:Lorg/apache/log4j/Logger;

    const-string v2, "Could not read JMS message."

    invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/Category;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v1, Lorg/apache/log4j/net/JMSSink;->logger:Lorg/apache/log4j/Logger;

    const-string v2, "Could not read JMS message."

    invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/Category;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
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

.method protected static lookup(Ljavax/naming/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p0, p1}, Ljavax/naming/Context;->lookup(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/naming/NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/apache/log4j/net/JMSSink;->logger:Lorg/apache/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not find name ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/log4j/Category;->error(Ljava/lang/Object;)V

    throw v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string v0, "Wrong number of arguments."

    invoke-static {v0}, Lorg/apache/log4j/net/JMSSink;->usage(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const/4 v2, 0x2

    aget-object v2, p0, v2

    const/4 v3, 0x3

    aget-object v3, p0, v3

    const/4 v4, 0x4

    aget-object v4, p0, v4

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Lorg/apache/log4j/xml/DOMConfigurator;->configure(Ljava/lang/String;)V

    :goto_0
    new-instance v4, Lorg/apache/log4j/net/JMSSink;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/apache/log4j/net/JMSSink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Type \"exit\" to quit JMSSink."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v2, "exit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Exiting. Kill the application if it does not exit due to daemon threads."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {v4}, Lorg/apache/log4j/PropertyConfigurator;->configure(Ljava/lang/String;)V

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

    sget-object v0, Lorg/apache/log4j/net/JMSSink;->class$org$apache$log4j$net$JMSSink:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.net.JMSSink"

    invoke-static {v0}, Lorg/apache/log4j/net/JMSSink;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/JMSSink;->class$org$apache$log4j$net$JMSSink:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " TopicConnectionFactoryBindingName TopicBindingName username password configFile"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_0
    sget-object v0, Lorg/apache/log4j/net/JMSSink;->class$org$apache$log4j$net$JMSSink:Ljava/lang/Class;

    goto :goto_0
.end method


# virtual methods
.method public onMessage(Ljavax/jms/Message;)V
    .locals 3

    :try_start_0
    instance-of v0, p1, Ljavax/jms/ObjectMessage;

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/jms/ObjectMessage;

    invoke-interface {p1}, Ljavax/jms/ObjectMessage;->getObject()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/spi/LoggingEvent;

    invoke-virtual {v0}, Lorg/apache/log4j/spi/LoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/log4j/Category;->callAppenders(Lorg/apache/log4j/spi/LoggingEvent;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lorg/apache/log4j/net/JMSSink;->logger:Lorg/apache/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Received message is of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p1}, Ljavax/jms/Message;->getJMSType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", was expecting ObjectMessage."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->warn(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/apache/log4j/net/JMSSink;->logger:Lorg/apache/log4j/Logger;

    const-string v2, "Exception thrown while processing incoming message."

    invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/Category;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
