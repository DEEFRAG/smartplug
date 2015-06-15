.class public Lorg/jdom/DefaultJDOMFactory;
.super Ljava/lang/Object;
.source "DefaultJDOMFactory.java"

# interfaces
.implements Lorg/jdom/JDOMFactory;


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: DefaultJDOMFactory.java,v $ $Revision: 1.7 $ $Date: 2007/11/10 05:28:58 $ $Name: jdom_1_1 $"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V
    .locals 1
    .param p1, "parent"    # Lorg/jdom/Parent;
    .param p2, "child"    # Lorg/jdom/Content;

    .prologue
    .line 176
    instance-of v0, p1, Lorg/jdom/Document;

    if-eqz v0, :cond_0

    .line 177
    check-cast p1, Lorg/jdom/Document;

    .end local p1    # "parent":Lorg/jdom/Parent;
    invoke-virtual {p1, p2}, Lorg/jdom/Document;->addContent(Lorg/jdom/Content;)Lorg/jdom/Document;

    .line 182
    :goto_0
    return-void

    .line 180
    .restart local p1    # "parent":Lorg/jdom/Parent;
    :cond_0
    check-cast p1, Lorg/jdom/Element;

    .end local p1    # "parent":Lorg/jdom/Parent;
    invoke-virtual {p1, p2}, Lorg/jdom/Element;->addContent(Lorg/jdom/Content;)Lorg/jdom/Element;

    goto :goto_0
.end method

.method public addNamespaceDeclaration(Lorg/jdom/Element;Lorg/jdom/Namespace;)V
    .locals 0
    .param p1, "parent"    # Lorg/jdom/Element;
    .param p2, "additional"    # Lorg/jdom/Namespace;

    .prologue
    .line 189
    invoke-virtual {p1, p2}, Lorg/jdom/Element;->addNamespaceDeclaration(Lorg/jdom/Namespace;)V

    .line 190
    return-void
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Attribute;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v0, Lorg/jdom/Attribute;

    invoke-direct {v0, p1, p2}, Lorg/jdom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;I)Lorg/jdom/Attribute;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 93
    new-instance v0, Lorg/jdom/Attribute;

    invoke-direct {v0, p1, p2, p3}, Lorg/jdom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;ILorg/jdom/Namespace;)Lorg/jdom/Attribute;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "namespace"    # Lorg/jdom/Namespace;

    .prologue
    .line 85
    new-instance v0, Lorg/jdom/Attribute;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/jdom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;ILorg/jdom/Namespace;)V

    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Attribute;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "namespace"    # Lorg/jdom/Namespace;

    .prologue
    .line 80
    new-instance v0, Lorg/jdom/Attribute;

    invoke-direct {v0, p1, p2, p3}, Lorg/jdom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jdom/Namespace;)V

    return-object v0
.end method

.method public cdata(Ljava/lang/String;)Lorg/jdom/CDATA;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 97
    new-instance v0, Lorg/jdom/CDATA;

    invoke-direct {v0, p1}, Lorg/jdom/CDATA;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public comment(Ljava/lang/String;)Lorg/jdom/Comment;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v0, Lorg/jdom/Comment;

    invoke-direct {v0, p1}, Lorg/jdom/Comment;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public docType(Ljava/lang/String;)Lorg/jdom/DocType;
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;

    .prologue
    .line 118
    new-instance v0, Lorg/jdom/DocType;

    invoke-direct {v0, p1}, Lorg/jdom/DocType;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public docType(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/DocType;
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "systemID"    # Ljava/lang/String;

    .prologue
    .line 114
    new-instance v0, Lorg/jdom/DocType;

    invoke-direct {v0, p1, p2}, Lorg/jdom/DocType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public docType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/DocType;
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "publicID"    # Ljava/lang/String;
    .param p3, "systemID"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v0, Lorg/jdom/DocType;

    invoke-direct {v0, p1, p2, p3}, Lorg/jdom/DocType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public document(Lorg/jdom/Element;)Lorg/jdom/Document;
    .locals 1
    .param p1, "rootElement"    # Lorg/jdom/Element;

    .prologue
    .line 130
    new-instance v0, Lorg/jdom/Document;

    invoke-direct {v0, p1}, Lorg/jdom/Document;-><init>(Lorg/jdom/Element;)V

    return-object v0
.end method

.method public document(Lorg/jdom/Element;Lorg/jdom/DocType;)Lorg/jdom/Document;
    .locals 1
    .param p1, "rootElement"    # Lorg/jdom/Element;
    .param p2, "docType"    # Lorg/jdom/DocType;

    .prologue
    .line 122
    new-instance v0, Lorg/jdom/Document;

    invoke-direct {v0, p1, p2}, Lorg/jdom/Document;-><init>(Lorg/jdom/Element;Lorg/jdom/DocType;)V

    return-object v0
.end method

.method public document(Lorg/jdom/Element;Lorg/jdom/DocType;Ljava/lang/String;)Lorg/jdom/Document;
    .locals 1
    .param p1, "rootElement"    # Lorg/jdom/Element;
    .param p2, "docType"    # Lorg/jdom/DocType;
    .param p3, "baseURI"    # Ljava/lang/String;

    .prologue
    .line 126
    new-instance v0, Lorg/jdom/Document;

    invoke-direct {v0, p1, p2, p3}, Lorg/jdom/Document;-><init>(Lorg/jdom/Element;Lorg/jdom/DocType;Ljava/lang/String;)V

    return-object v0
.end method

.method public element(Ljava/lang/String;)Lorg/jdom/Element;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 138
    new-instance v0, Lorg/jdom/Element;

    invoke-direct {v0, p1}, Lorg/jdom/Element;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public element(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Element;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v0, Lorg/jdom/Element;

    invoke-direct {v0, p1, p2}, Lorg/jdom/Element;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public element(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Element;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    .line 146
    new-instance v0, Lorg/jdom/Element;

    invoke-direct {v0, p1, p2, p3}, Lorg/jdom/Element;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public element(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/jdom/Namespace;

    .prologue
    .line 134
    new-instance v0, Lorg/jdom/Element;

    invoke-direct {v0, p1, p2}, Lorg/jdom/Element;-><init>(Ljava/lang/String;Lorg/jdom/Namespace;)V

    return-object v0
.end method

.method public entityRef(Ljava/lang/String;)Lorg/jdom/EntityRef;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 160
    new-instance v0, Lorg/jdom/EntityRef;

    invoke-direct {v0, p1}, Lorg/jdom/EntityRef;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public entityRef(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/EntityRef;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "systemID"    # Ljava/lang/String;

    .prologue
    .line 168
    new-instance v0, Lorg/jdom/EntityRef;

    invoke-direct {v0, p1, p2}, Lorg/jdom/EntityRef;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public entityRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/EntityRef;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicID"    # Ljava/lang/String;
    .param p3, "systemID"    # Ljava/lang/String;

    .prologue
    .line 164
    new-instance v0, Lorg/jdom/EntityRef;

    invoke-direct {v0, p1, p2, p3}, Lorg/jdom/EntityRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 156
    new-instance v0, Lorg/jdom/ProcessingInstruction;

    invoke-direct {v0, p1, p2}, Lorg/jdom/ProcessingInstruction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/util/Map;)Lorg/jdom/ProcessingInstruction;
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/util/Map;

    .prologue
    .line 151
    new-instance v0, Lorg/jdom/ProcessingInstruction;

    invoke-direct {v0, p1, p2}, Lorg/jdom/ProcessingInstruction;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public setAttribute(Lorg/jdom/Element;Lorg/jdom/Attribute;)V
    .locals 0
    .param p1, "parent"    # Lorg/jdom/Element;
    .param p2, "a"    # Lorg/jdom/Attribute;

    .prologue
    .line 185
    invoke-virtual {p1, p2}, Lorg/jdom/Element;->setAttribute(Lorg/jdom/Attribute;)Lorg/jdom/Element;

    .line 186
    return-void
.end method

.method public text(Ljava/lang/String;)Lorg/jdom/Text;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 101
    new-instance v0, Lorg/jdom/Text;

    invoke-direct {v0, p1}, Lorg/jdom/Text;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
