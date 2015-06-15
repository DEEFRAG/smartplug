.class public abstract Lorg/jdom/adapters/AbstractDOMAdapter;
.super Ljava/lang/Object;
.source "AbstractDOMAdapter.java"

# interfaces
.implements Lorg/jdom/adapters/DOMAdapter;


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: AbstractDOMAdapter.java,v $ $Revision: 1.21 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1 $"

.field static class$java$lang$String:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 165
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


# virtual methods
.method public abstract createDocument()Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation
.end method

.method public createDocument(Lorg/jdom/DocType;)Lorg/w3c/dom/Document;
    .locals 5
    .param p1, "doctype"    # Lorg/jdom/DocType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 130
    invoke-virtual {p0}, Lorg/jdom/adapters/AbstractDOMAdapter;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 142
    :goto_0
    return-object v2

    .line 133
    :cond_0
    invoke-virtual {p0}, Lorg/jdom/adapters/AbstractDOMAdapter;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v1

    .line 134
    .local v1, "domImpl":Lorg/w3c/dom/DOMImplementation;
    invoke-virtual {p1}, Lorg/jdom/DocType;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jdom/DocType;->getPublicID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/jdom/DocType;->getSystemID()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lorg/w3c/dom/DOMImplementation;->createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;

    move-result-object v0

    .line 140
    .local v0, "domDocType":Lorg/w3c/dom/DocumentType;
    invoke-virtual {p1}, Lorg/jdom/DocType;->getInternalSubset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/jdom/adapters/AbstractDOMAdapter;->setInternalSubset(Lorg/w3c/dom/DocumentType;Ljava/lang/String;)V

    .line 142
    const-string v2, "http://temporary"

    invoke-virtual {p1}, Lorg/jdom/DocType;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object v2

    goto :goto_0
.end method

.method public getDocument(Ljava/io/File;Z)Lorg/w3c/dom/Document;
    .locals 1
    .param p1, "filename"    # Ljava/io/File;
    .param p2, "validate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, p2}, Lorg/jdom/adapters/AbstractDOMAdapter;->getDocument(Ljava/io/InputStream;Z)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDocument(Ljava/io/InputStream;Z)Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jdom/JDOMException;
        }
    .end annotation
.end method

.method protected setInternalSubset(Lorg/w3c/dom/DocumentType;Ljava/lang/String;)V
    .locals 6
    .param p1, "dt"    # Lorg/w3c/dom/DocumentType;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 157
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 164
    .local v0, "dtclass":Ljava/lang/Class;
    const-string v3, "setInternalSubset"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v2, Lorg/jdom/adapters/AbstractDOMAdapter;->class$java$lang$String:Ljava/lang/Class;

    if-nez v2, :cond_2

    const-string v2, "java.lang.String"

    invoke-static {v2}, Lorg/jdom/adapters/AbstractDOMAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/jdom/adapters/AbstractDOMAdapter;->class$java$lang$String:Ljava/lang/Class;

    :goto_1
    aput-object v2, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 166
    .local v1, "setInternalSubset":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 168
    .end local v0    # "dtclass":Ljava/lang/Class;
    .end local v1    # "setInternalSubset":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 164
    .restart local v0    # "dtclass":Ljava/lang/Class;
    :cond_2
    sget-object v2, Lorg/jdom/adapters/AbstractDOMAdapter;->class$java$lang$String:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
