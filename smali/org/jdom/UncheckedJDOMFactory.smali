.class public Lorg/jdom/UncheckedJDOMFactory;
.super Ljava/lang/Object;
.source "UncheckedJDOMFactory.java"

# interfaces
.implements Lorg/jdom/JDOMFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V
    .locals 3
    .param p1, "parent"    # Lorg/jdom/Parent;
    .param p2, "child"    # Lorg/jdom/Content;

    .prologue
    .line 267
    instance-of v2, p1, Lorg/jdom/Element;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 268
    check-cast v1, Lorg/jdom/Element;

    .line 269
    .local v1, "elt":Lorg/jdom/Element;
    iget-object v2, v1, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v2, p2}, Lorg/jdom/ContentList;->uncheckedAddContent(Lorg/jdom/Content;)V

    .line 275
    .end local v1    # "elt":Lorg/jdom/Element;
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 272
    check-cast v0, Lorg/jdom/Document;

    .line 273
    .local v0, "doc":Lorg/jdom/Document;
    iget-object v2, v0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v2, p2}, Lorg/jdom/ContentList;->uncheckedAddContent(Lorg/jdom/Content;)V

    goto :goto_0
.end method

.method public addNamespaceDeclaration(Lorg/jdom/Element;Lorg/jdom/Namespace;)V
    .locals 2
    .param p1, "parent"    # Lorg/jdom/Element;
    .param p2, "additional"    # Lorg/jdom/Namespace;

    .prologue
    .line 282
    iget-object v0, p1, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p1, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    .line 285
    :cond_0
    iget-object v0, p1, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    return-void
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Attribute;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 127
    new-instance v0, Lorg/jdom/Attribute;

    invoke-direct {v0}, Lorg/jdom/Attribute;-><init>()V

    .line 128
    .local v0, "a":Lorg/jdom/Attribute;
    iput-object p1, v0, Lorg/jdom/Attribute;->name:Ljava/lang/String;

    .line 129
    iput-object p2, v0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    .line 130
    sget-object v1, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    iput-object v1, v0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    .line 131
    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;I)Lorg/jdom/Attribute;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 135
    new-instance v0, Lorg/jdom/Attribute;

    invoke-direct {v0}, Lorg/jdom/Attribute;-><init>()V

    .line 136
    .local v0, "a":Lorg/jdom/Attribute;
    iput-object p1, v0, Lorg/jdom/Attribute;->name:Ljava/lang/String;

    .line 137
    iput p3, v0, Lorg/jdom/Attribute;->type:I

    .line 138
    iput-object p2, v0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    .line 139
    sget-object v1, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    iput-object v1, v0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    .line 140
    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;ILorg/jdom/Namespace;)Lorg/jdom/Attribute;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "namespace"    # Lorg/jdom/Namespace;

    .prologue
    .line 115
    new-instance v0, Lorg/jdom/Attribute;

    invoke-direct {v0}, Lorg/jdom/Attribute;-><init>()V

    .line 116
    .local v0, "a":Lorg/jdom/Attribute;
    iput-object p1, v0, Lorg/jdom/Attribute;->name:Ljava/lang/String;

    .line 117
    iput p3, v0, Lorg/jdom/Attribute;->type:I

    .line 118
    iput-object p2, v0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    .line 119
    if-nez p4, :cond_0

    .line 120
    sget-object p4, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    .line 122
    :cond_0
    iput-object p4, v0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    .line 123
    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Attribute;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "namespace"    # Lorg/jdom/Namespace;

    .prologue
    .line 104
    new-instance v0, Lorg/jdom/Attribute;

    invoke-direct {v0}, Lorg/jdom/Attribute;-><init>()V

    .line 105
    .local v0, "a":Lorg/jdom/Attribute;
    iput-object p1, v0, Lorg/jdom/Attribute;->name:Ljava/lang/String;

    .line 106
    iput-object p2, v0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    .line 107
    if-nez p3, :cond_0

    .line 108
    sget-object p3, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    .line 110
    :cond_0
    iput-object p3, v0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    .line 111
    return-object v0
.end method

.method public cdata(Ljava/lang/String;)Lorg/jdom/CDATA;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 158
    new-instance v0, Lorg/jdom/CDATA;

    invoke-direct {v0}, Lorg/jdom/CDATA;-><init>()V

    .line 159
    .local v0, "c":Lorg/jdom/CDATA;
    iput-object p1, v0, Lorg/jdom/CDATA;->value:Ljava/lang/String;

    .line 160
    return-object v0
.end method

.method public comment(Ljava/lang/String;)Lorg/jdom/Comment;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 168
    new-instance v0, Lorg/jdom/Comment;

    invoke-direct {v0}, Lorg/jdom/Comment;-><init>()V

    .line 169
    .local v0, "c":Lorg/jdom/Comment;
    iput-object p1, v0, Lorg/jdom/Comment;->text:Ljava/lang/String;

    .line 170
    return-object v0
.end method

.method public docType(Ljava/lang/String;)Lorg/jdom/DocType;
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0, p1, v0, v0}, Lorg/jdom/UncheckedJDOMFactory;->docType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/DocType;

    move-result-object v0

    return-object v0
.end method

.method public docType(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/DocType;
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "systemID"    # Ljava/lang/String;

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/jdom/UncheckedJDOMFactory;->docType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/DocType;

    move-result-object v0

    return-object v0
.end method

.method public docType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/DocType;
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "publicID"    # Ljava/lang/String;
    .param p3, "systemID"    # Ljava/lang/String;

    .prologue
    .line 221
    new-instance v0, Lorg/jdom/DocType;

    invoke-direct {v0}, Lorg/jdom/DocType;-><init>()V

    .line 222
    .local v0, "d":Lorg/jdom/DocType;
    iput-object p1, v0, Lorg/jdom/DocType;->elementName:Ljava/lang/String;

    .line 223
    iput-object p2, v0, Lorg/jdom/DocType;->publicID:Ljava/lang/String;

    .line 224
    iput-object p3, v0, Lorg/jdom/DocType;->systemID:Ljava/lang/String;

    .line 225
    return-object v0
.end method

.method public document(Lorg/jdom/Element;)Lorg/jdom/Document;
    .locals 1
    .param p1, "rootElement"    # Lorg/jdom/Element;

    .prologue
    const/4 v0, 0x0

    .line 259
    invoke-virtual {p0, p1, v0, v0}, Lorg/jdom/UncheckedJDOMFactory;->document(Lorg/jdom/Element;Lorg/jdom/DocType;Ljava/lang/String;)Lorg/jdom/Document;

    move-result-object v0

    return-object v0
.end method

.method public document(Lorg/jdom/Element;Lorg/jdom/DocType;)Lorg/jdom/Document;
    .locals 1
    .param p1, "rootElement"    # Lorg/jdom/Element;
    .param p2, "docType"    # Lorg/jdom/DocType;

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom/UncheckedJDOMFactory;->document(Lorg/jdom/Element;Lorg/jdom/DocType;Ljava/lang/String;)Lorg/jdom/Document;

    move-result-object v0

    return-object v0
.end method

.method public document(Lorg/jdom/Element;Lorg/jdom/DocType;Ljava/lang/String;)Lorg/jdom/Document;
    .locals 1
    .param p1, "rootElement"    # Lorg/jdom/Element;
    .param p2, "docType"    # Lorg/jdom/DocType;
    .param p3, "baseURI"    # Ljava/lang/String;

    .prologue
    .line 241
    new-instance v0, Lorg/jdom/Document;

    invoke-direct {v0}, Lorg/jdom/Document;-><init>()V

    .line 242
    .local v0, "d":Lorg/jdom/Document;
    if-eqz p2, :cond_0

    .line 243
    invoke-virtual {p0, v0, p2}, Lorg/jdom/UncheckedJDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    .line 245
    :cond_0
    if-eqz p1, :cond_1

    .line 246
    invoke-virtual {p0, v0, p1}, Lorg/jdom/UncheckedJDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    .line 248
    :cond_1
    if-eqz p3, :cond_2

    .line 249
    iput-object p3, v0, Lorg/jdom/Document;->baseURI:Ljava/lang/String;

    .line 251
    :cond_2
    return-object v0
.end method

.method public element(Ljava/lang/String;)Lorg/jdom/Element;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v0, Lorg/jdom/Element;

    invoke-direct {v0}, Lorg/jdom/Element;-><init>()V

    .line 86
    .local v0, "e":Lorg/jdom/Element;
    iput-object p1, v0, Lorg/jdom/Element;->name:Ljava/lang/String;

    .line 87
    sget-object v1, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    iput-object v1, v0, Lorg/jdom/Element;->namespace:Lorg/jdom/Namespace;

    .line 88
    return-object v0
.end method

.method public element(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Element;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 92
    const-string v0, ""

    invoke-static {v0, p2}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom/UncheckedJDOMFactory;->element(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;

    move-result-object v0

    return-object v0
.end method

.method public element(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Element;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-static {p2, p3}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom/UncheckedJDOMFactory;->element(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;

    move-result-object v0

    return-object v0
.end method

.method public element(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/jdom/Namespace;

    .prologue
    .line 75
    new-instance v0, Lorg/jdom/Element;

    invoke-direct {v0}, Lorg/jdom/Element;-><init>()V

    .line 76
    .local v0, "e":Lorg/jdom/Element;
    iput-object p1, v0, Lorg/jdom/Element;->name:Ljava/lang/String;

    .line 77
    if-nez p2, :cond_0

    .line 78
    sget-object p2, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    .line 80
    :cond_0
    iput-object p2, v0, Lorg/jdom/Element;->namespace:Lorg/jdom/Namespace;

    .line 81
    return-object v0
.end method

.method public entityRef(Ljava/lang/String;)Lorg/jdom/EntityRef;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 196
    new-instance v0, Lorg/jdom/EntityRef;

    invoke-direct {v0}, Lorg/jdom/EntityRef;-><init>()V

    .line 197
    .local v0, "e":Lorg/jdom/EntityRef;
    iput-object p1, v0, Lorg/jdom/EntityRef;->name:Ljava/lang/String;

    .line 198
    return-object v0
.end method

.method public entityRef(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/EntityRef;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "systemID"    # Ljava/lang/String;

    .prologue
    .line 202
    new-instance v0, Lorg/jdom/EntityRef;

    invoke-direct {v0}, Lorg/jdom/EntityRef;-><init>()V

    .line 203
    .local v0, "e":Lorg/jdom/EntityRef;
    iput-object p1, v0, Lorg/jdom/EntityRef;->name:Ljava/lang/String;

    .line 204
    iput-object p2, v0, Lorg/jdom/EntityRef;->systemID:Ljava/lang/String;

    .line 205
    return-object v0
.end method

.method public entityRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/EntityRef;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicID"    # Ljava/lang/String;
    .param p3, "systemID"    # Ljava/lang/String;

    .prologue
    .line 209
    new-instance v0, Lorg/jdom/EntityRef;

    invoke-direct {v0}, Lorg/jdom/EntityRef;-><init>()V

    .line 210
    .local v0, "e":Lorg/jdom/EntityRef;
    iput-object p1, v0, Lorg/jdom/EntityRef;->name:Ljava/lang/String;

    .line 211
    iput-object p2, v0, Lorg/jdom/EntityRef;->publicID:Ljava/lang/String;

    .line 212
    iput-object p3, v0, Lorg/jdom/EntityRef;->systemID:Ljava/lang/String;

    .line 213
    return-object v0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 185
    new-instance v0, Lorg/jdom/ProcessingInstruction;

    invoke-direct {v0}, Lorg/jdom/ProcessingInstruction;-><init>()V

    .line 186
    .local v0, "p":Lorg/jdom/ProcessingInstruction;
    iput-object p1, v0, Lorg/jdom/ProcessingInstruction;->target:Ljava/lang/String;

    .line 187
    invoke-virtual {v0, p2}, Lorg/jdom/ProcessingInstruction;->setData(Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;

    .line 188
    return-object v0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/util/Map;)Lorg/jdom/ProcessingInstruction;
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/util/Map;

    .prologue
    .line 178
    new-instance v0, Lorg/jdom/ProcessingInstruction;

    invoke-direct {v0}, Lorg/jdom/ProcessingInstruction;-><init>()V

    .line 179
    .local v0, "p":Lorg/jdom/ProcessingInstruction;
    iput-object p1, v0, Lorg/jdom/ProcessingInstruction;->target:Ljava/lang/String;

    .line 180
    invoke-virtual {v0, p2}, Lorg/jdom/ProcessingInstruction;->setData(Ljava/util/Map;)Lorg/jdom/ProcessingInstruction;

    .line 181
    return-object v0
.end method

.method public setAttribute(Lorg/jdom/Element;Lorg/jdom/Attribute;)V
    .locals 1
    .param p1, "parent"    # Lorg/jdom/Element;
    .param p2, "a"    # Lorg/jdom/Attribute;

    .prologue
    .line 278
    iget-object v0, p1, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    invoke-virtual {v0, p2}, Lorg/jdom/AttributeList;->uncheckedAddAttribute(Lorg/jdom/Attribute;)V

    .line 279
    return-void
.end method

.method public text(Ljava/lang/String;)Lorg/jdom/Text;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 148
    new-instance v0, Lorg/jdom/Text;

    invoke-direct {v0}, Lorg/jdom/Text;-><init>()V

    .line 149
    .local v0, "t":Lorg/jdom/Text;
    iput-object p1, v0, Lorg/jdom/Text;->value:Ljava/lang/String;

    .line 150
    return-object v0
.end method
