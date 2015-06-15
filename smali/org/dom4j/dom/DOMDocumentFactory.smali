.class public Lorg/dom4j/dom/DOMDocumentFactory;
.super Lorg/dom4j/DocumentFactory;
.source "DOMDocumentFactory.java"

# interfaces
.implements Lorg/w3c/dom/DOMImplementation;


# static fields
.field static class$org$dom4j$dom$DOMDocumentFactory:Ljava/lang/Class;

.field private static singleton:Lorg/dom4j/util/SingletonStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 40
    const/4 v4, 0x0

    sput-object v4, Lorg/dom4j/dom/DOMDocumentFactory;->singleton:Lorg/dom4j/util/SingletonStrategy;

    .line 44
    :try_start_0
    const-string v1, "org.dom4j.util.SimpleSingleton"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 45
    .local v1, "defaultSingletonClass":Ljava/lang/String;
    const/4 v0, 0x0

    .line 47
    .local v0, "clazz":Ljava/lang/Class;
    move-object v3, v1

    .line 48
    .local v3, "singletonClass":Ljava/lang/String;
    :try_start_1
    const-string v4, "org.dom4j.dom.DOMDocumentFactory.singleton.strategy"

    invoke-static {v4, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 59
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/dom4j/util/SingletonStrategy;

    sput-object v4, Lorg/dom4j/dom/DOMDocumentFactory;->singleton:Lorg/dom4j/util/SingletonStrategy;

    .line 60
    sget-object v5, Lorg/dom4j/dom/DOMDocumentFactory;->singleton:Lorg/dom4j/util/SingletonStrategy;

    sget-object v4, Lorg/dom4j/dom/DOMDocumentFactory;->class$org$dom4j$dom$DOMDocumentFactory:Ljava/lang/Class;

    if-nez v4, :cond_0

    const-string v4, "org.dom4j.dom.DOMDocumentFactory"

    invoke-static {v4}, Lorg/dom4j/dom/DOMDocumentFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/dom4j/dom/DOMDocumentFactory;->class$org$dom4j$dom$DOMDocumentFactory:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lorg/dom4j/util/SingletonStrategy;->setSingletonClassName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 63
    :goto_2
    return-void

    .line 52
    :catch_0
    move-exception v2

    .line 54
    .local v2, "exc1":Ljava/lang/Exception;
    move-object v3, v1

    .line 55
    :try_start_3
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_0

    .line 60
    .end local v2    # "exc1":Ljava/lang/Exception;
    :cond_0
    :try_start_4
    sget-object v4, Lorg/dom4j/dom/DOMDocumentFactory;->class$org$dom4j$dom$DOMDocumentFactory:Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 56
    .restart local v2    # "exc1":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_0

    .line 61
    .end local v2    # "exc1":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/dom4j/DocumentFactory;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 60
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance()Lorg/dom4j/DocumentFactory;
    .locals 2

    .prologue
    .line 73
    sget-object v1, Lorg/dom4j/dom/DOMDocumentFactory;->singleton:Lorg/dom4j/util/SingletonStrategy;

    invoke-interface {v1}, Lorg/dom4j/util/SingletonStrategy;->instance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/dom/DOMDocumentFactory;

    .line 74
    .local v0, "fact":Lorg/dom4j/dom/DOMDocumentFactory;
    return-object v0
.end method


# virtual methods
.method protected asDocumentType(Lorg/w3c/dom/DocumentType;)Lorg/dom4j/dom/DOMDocumentType;
    .locals 4
    .param p1, "docType"    # Lorg/w3c/dom/DocumentType;

    .prologue
    .line 170
    instance-of v0, p1, Lorg/dom4j/dom/DOMDocumentType;

    if-eqz v0, :cond_0

    .line 171
    check-cast p1, Lorg/dom4j/dom/DOMDocumentType;

    .line 173
    .end local p1    # "docType":Lorg/w3c/dom/DocumentType;
    :goto_0
    return-object p1

    .restart local p1    # "docType":Lorg/w3c/dom/DocumentType;
    :cond_0
    new-instance v0, Lorg/dom4j/dom/DOMDocumentType;

    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/dom4j/dom/DOMDocumentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;
    .locals 1
    .param p1, "owner"    # Lorg/dom4j/Element;
    .param p2, "qname"    # Lorg/dom4j/QName;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v0, Lorg/dom4j/dom/DOMAttribute;

    invoke-direct {v0, p2, p3}, Lorg/dom4j/dom/DOMAttribute;-><init>(Lorg/dom4j/QName;Ljava/lang/String;)V

    return-object v0
.end method

.method public createCDATA(Ljava/lang/String;)Lorg/dom4j/CDATA;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 103
    new-instance v0, Lorg/dom4j/dom/DOMCDATA;

    invoke-direct {v0, p1}, Lorg/dom4j/dom/DOMCDATA;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createComment(Ljava/lang/String;)Lorg/dom4j/Comment;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 107
    new-instance v0, Lorg/dom4j/dom/DOMComment;

    invoke-direct {v0, p1}, Lorg/dom4j/dom/DOMComment;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/DocumentType;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v0, Lorg/dom4j/dom/DOMDocumentType;

    invoke-direct {v0, p1, p2, p3}, Lorg/dom4j/dom/DOMDocumentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createDocument()Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lorg/dom4j/dom/DOMDocument;

    invoke-direct {v0}, Lorg/dom4j/dom/DOMDocument;-><init>()V

    .line 80
    .local v0, "answer":Lorg/dom4j/dom/DOMDocument;
    invoke-virtual {v0, p0}, Lorg/dom4j/dom/DOMDocument;->setDocumentFactory(Lorg/dom4j/DocumentFactory;)V

    .line 82
    return-object v0
.end method

.method public createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .param p3, "docType"    # Lorg/w3c/dom/DocumentType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 156
    if-eqz p3, :cond_0

    .line 157
    invoke-virtual {p0, p3}, Lorg/dom4j/dom/DOMDocumentFactory;->asDocumentType(Lorg/w3c/dom/DocumentType;)Lorg/dom4j/dom/DOMDocumentType;

    move-result-object v1

    .line 158
    .local v1, "documentType":Lorg/dom4j/dom/DOMDocumentType;
    new-instance v0, Lorg/dom4j/dom/DOMDocument;

    invoke-direct {v0, v1}, Lorg/dom4j/dom/DOMDocument;-><init>(Lorg/dom4j/dom/DOMDocumentType;)V

    .line 163
    .end local v1    # "documentType":Lorg/dom4j/dom/DOMDocumentType;
    .local v0, "document":Lorg/dom4j/dom/DOMDocument;
    :goto_0
    invoke-virtual {p0, p2, p1}, Lorg/dom4j/dom/DOMDocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/dom4j/dom/DOMDocument;->addElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    .line 165
    return-object v0

    .line 160
    .end local v0    # "document":Lorg/dom4j/dom/DOMDocument;
    :cond_0
    new-instance v0, Lorg/dom4j/dom/DOMDocument;

    invoke-direct {v0}, Lorg/dom4j/dom/DOMDocument;-><init>()V

    .restart local v0    # "document":Lorg/dom4j/dom/DOMDocument;
    goto :goto_0
.end method

.method public createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;
    .locals 1
    .param p1, "qualifiedName"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Lorg/dom4j/dom/DOMDocumentType;

    invoke-direct {v0, p1, p2, p3}, Lorg/dom4j/dom/DOMDocumentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .locals 1
    .param p1, "qname"    # Lorg/dom4j/QName;

    .prologue
    .line 91
    new-instance v0, Lorg/dom4j/dom/DOMElement;

    invoke-direct {v0, p1}, Lorg/dom4j/dom/DOMElement;-><init>(Lorg/dom4j/QName;)V

    return-object v0
.end method

.method public createElement(Lorg/dom4j/QName;I)Lorg/dom4j/Element;
    .locals 1
    .param p1, "qname"    # Lorg/dom4j/QName;
    .param p2, "attributeCount"    # I

    .prologue
    .line 95
    new-instance v0, Lorg/dom4j/dom/DOMElement;

    invoke-direct {v0, p1, p2}, Lorg/dom4j/dom/DOMElement;-><init>(Lorg/dom4j/QName;I)V

    return-object v0
.end method

.method public createEntity(Ljava/lang/String;)Lorg/dom4j/Entity;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 115
    new-instance v0, Lorg/dom4j/dom/DOMEntityReference;

    invoke-direct {v0, p1}, Lorg/dom4j/dom/DOMEntityReference;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Entity;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 119
    new-instance v0, Lorg/dom4j/dom/DOMEntityReference;

    invoke-direct {v0, p1, p2}, Lorg/dom4j/dom/DOMEntityReference;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v0, Lorg/dom4j/dom/DOMNamespace;

    invoke-direct {v0, p1, p2}, Lorg/dom4j/dom/DOMNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 128
    new-instance v0, Lorg/dom4j/dom/DOMProcessingInstruction;

    invoke-direct {v0, p1, p2}, Lorg/dom4j/dom/DOMProcessingInstruction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)Lorg/dom4j/ProcessingInstruction;
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/util/Map;

    .prologue
    .line 133
    new-instance v0, Lorg/dom4j/dom/DOMProcessingInstruction;

    invoke-direct {v0, p1, p2}, Lorg/dom4j/dom/DOMProcessingInstruction;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public createText(Ljava/lang/String;)Lorg/dom4j/Text;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v0, Lorg/dom4j/dom/DOMText;

    invoke-direct {v0, p1}, Lorg/dom4j/dom/DOMText;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "feat"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 138
    const-string v1, "XML"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Core"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1.0"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "2.0"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 143
    :cond_2
    return v0
.end method
