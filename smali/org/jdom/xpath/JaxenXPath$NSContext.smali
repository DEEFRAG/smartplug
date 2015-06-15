.class Lorg/jdom/xpath/JaxenXPath$NSContext;
.super Lorg/jaxen/SimpleNamespaceContext;
.source "JaxenXPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom/xpath/JaxenXPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NSContext"
.end annotation


# instance fields
.field private final this$0:Lorg/jdom/xpath/JaxenXPath;


# direct methods
.method public constructor <init>(Lorg/jdom/xpath/JaxenXPath;)V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Lorg/jaxen/SimpleNamespaceContext;-><init>()V

    .line 309
    iput-object p1, p0, Lorg/jdom/xpath/JaxenXPath$NSContext;->this$0:Lorg/jdom/xpath/JaxenXPath;

    .line 311
    return-void
.end method


# virtual methods
.method public translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 323
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 324
    :cond_0
    const/4 v3, 0x0

    .line 352
    :cond_1
    :goto_0
    return-object v3

    .line 327
    :cond_2
    invoke-super {p0, p1}, Lorg/jaxen/SimpleNamespaceContext;->translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, "uri":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 329
    iget-object v4, p0, Lorg/jdom/xpath/JaxenXPath$NSContext;->this$0:Lorg/jdom/xpath/JaxenXPath;

    invoke-static {v4}, Lorg/jdom/xpath/JaxenXPath;->access$000(Lorg/jdom/xpath/JaxenXPath;)Ljava/lang/Object;

    move-result-object v0

    .line 330
    .local v0, "ctx":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 331
    const/4 v1, 0x0

    .line 334
    .local v1, "elt":Lorg/jdom/Element;
    instance-of v4, v0, Lorg/jdom/Element;

    if-eqz v4, :cond_4

    move-object v1, v0

    .line 335
    check-cast v1, Lorg/jdom/Element;

    .line 344
    .end local v0    # "ctx":Ljava/lang/Object;
    :cond_3
    :goto_1
    if-eqz v1, :cond_1

    .line 345
    invoke-virtual {v1, p1}, Lorg/jdom/Element;->getNamespace(Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v2

    .line 346
    .local v2, "ns":Lorg/jdom/Namespace;
    if-eqz v2, :cond_1

    .line 347
    invoke-virtual {v2}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 336
    .end local v2    # "ns":Lorg/jdom/Namespace;
    .restart local v0    # "ctx":Ljava/lang/Object;
    :cond_4
    instance-of v4, v0, Lorg/jdom/Attribute;

    if-eqz v4, :cond_5

    .line 337
    check-cast v0, Lorg/jdom/Attribute;

    .end local v0    # "ctx":Ljava/lang/Object;
    invoke-virtual {v0}, Lorg/jdom/Attribute;->getParent()Lorg/jdom/Element;

    move-result-object v1

    goto :goto_1

    .line 338
    .restart local v0    # "ctx":Ljava/lang/Object;
    :cond_5
    instance-of v4, v0, Lorg/jdom/Content;

    if-eqz v4, :cond_6

    .line 339
    check-cast v0, Lorg/jdom/Content;

    .end local v0    # "ctx":Ljava/lang/Object;
    invoke-virtual {v0}, Lorg/jdom/Content;->getParentElement()Lorg/jdom/Element;

    move-result-object v1

    goto :goto_1

    .line 340
    .restart local v0    # "ctx":Ljava/lang/Object;
    :cond_6
    instance-of v4, v0, Lorg/jdom/Document;

    if-eqz v4, :cond_3

    .line 341
    check-cast v0, Lorg/jdom/Document;

    .end local v0    # "ctx":Ljava/lang/Object;
    invoke-virtual {v0}, Lorg/jdom/Document;->getRootElement()Lorg/jdom/Element;

    move-result-object v1

    goto :goto_1
.end method
