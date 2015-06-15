.class public abstract Lorg/apache/log4j/jmx/AbstractDynamicMBean;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/management/DynamicMBean;
.implements Ljavax/management/MBeanRegistration;


# instance fields
.field dClassName:Ljava/lang/String;

.field private final mbeanList:Ljava/util/Vector;

.field server:Ljavax/management/MBeanServer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->mbeanList:Ljava/util/Vector;

    return-void
.end method

.method protected static getAppenderName(Lorg/apache/log4j/Appender;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/AttributeNotFoundException;,
            Ljavax/management/MBeanException;,
            Ljavax/management/ReflectionException;
        }
    .end annotation
.end method

.method public getAttributes([Ljava/lang/String;)Ljavax/management/AttributeList;
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Ljavax/management/RuntimeOperationsException;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "attributeNames[] cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Cannot invoke a getter of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->dClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/management/RuntimeOperationsException;-><init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Ljavax/management/AttributeList;

    invoke-direct {v1}, Ljavax/management/AttributeList;-><init>()V

    array-length v0, p1

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    :try_start_0
    aget-object v2, p1, v0

    invoke-interface {p0, v2}, Ljavax/management/DynamicMBean;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljavax/management/Attribute;

    aget-object v4, p1, v0

    invoke-direct {v3, v4, v2}, Ljavax/management/Attribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljavax/management/AttributeList;->add(Ljavax/management/Attribute;)V
    :try_end_0
    .catch Ljavax/management/JMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method protected abstract getLogger()Lorg/apache/log4j/Logger;
.end method

.method public abstract getMBeanInfo()Ljavax/management/MBeanInfo;
.end method

.method public abstract invoke(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/MBeanException;,
            Ljavax/management/ReflectionException;
        }
    .end annotation
.end method

.method public postDeregister()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v1, "postDeregister is called."

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->debug(Ljava/lang/Object;)V

    return-void
.end method

.method public postRegister(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public preDeregister()V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v1, "preDeregister called."

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->debug(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->mbeanList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/management/ObjectName;

    :try_start_0
    iget-object v2, p0, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->server:Ljavax/management/MBeanServer;

    invoke-interface {v2, v0}, Ljavax/management/MBeanServer;->unregisterMBean(Ljavax/management/ObjectName;)V
    :try_end_0
    .catch Ljavax/management/InstanceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/management/MBeanRegistrationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {p0}, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Missing MBean "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljavax/management/ObjectName;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/log4j/Category;->warn(Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {p0}, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Failed unregistering "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljavax/management/ObjectName;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/log4j/Category;->warn(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public preRegister(Ljavax/management/MBeanServer;Ljavax/management/ObjectName;)Ljavax/management/ObjectName;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "preRegister called. Server="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->debug(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->server:Ljavax/management/MBeanServer;

    return-object p2
.end method

.method protected registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/InstanceAlreadyExistsException;,
            Ljavax/management/MBeanRegistrationException;,
            Ljavax/management/NotCompliantMBeanException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->server:Ljavax/management/MBeanServer;

    invoke-interface {v0, p1, p2}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    iget-object v0, p0, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->mbeanList:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract setAttribute(Ljavax/management/Attribute;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/AttributeNotFoundException;,
            Ljavax/management/InvalidAttributeValueException;,
            Ljavax/management/MBeanException;,
            Ljavax/management/ReflectionException;
        }
    .end annotation
.end method

.method public setAttributes(Ljavax/management/AttributeList;)Ljavax/management/AttributeList;
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Ljavax/management/RuntimeOperationsException;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "AttributeList attributes cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Cannot invoke a setter of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->dClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/management/RuntimeOperationsException;-><init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Ljavax/management/AttributeList;

    invoke-direct {v1}, Ljavax/management/AttributeList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/management/Attribute;

    :try_start_0
    invoke-interface {p0, v0}, Ljavax/management/DynamicMBean;->setAttribute(Ljavax/management/Attribute;)V

    invoke-virtual {v0}, Ljavax/management/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljavax/management/DynamicMBean;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljavax/management/Attribute;

    invoke-direct {v4, v0, v3}, Ljavax/management/Attribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljavax/management/AttributeList;->add(Ljavax/management/Attribute;)V
    :try_end_0
    .catch Ljavax/management/JMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
