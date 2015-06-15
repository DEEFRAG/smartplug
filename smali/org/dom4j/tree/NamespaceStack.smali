.class public Lorg/dom4j/tree/NamespaceStack;
.super Ljava/lang/Object;
.source "NamespaceStack.java"


# instance fields
.field private currentNamespaceCache:Ljava/util/Map;

.field private defaultNamespace:Lorg/dom4j/Namespace;

.field private documentFactory:Lorg/dom4j/DocumentFactory;

.field private namespaceCacheList:Ljava/util/ArrayList;

.field private namespaceStack:Ljava/util/ArrayList;

.field private rootNamespaceCache:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceCacheList:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->rootNamespaceCache:Ljava/util/Map;

    .line 52
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;)V
    .locals 1
    .param p1, "documentFactory"    # Lorg/dom4j/DocumentFactory;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceCacheList:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->rootNamespaceCache:Ljava/util/Map;

    .line 56
    iput-object p1, p0, Lorg/dom4j/tree/NamespaceStack;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 57
    return-void
.end method


# virtual methods
.method public addNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 291
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/tree/NamespaceStack;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    .line 292
    .local v0, "namespace":Lorg/dom4j/Namespace;
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 294
    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 101
    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceCacheList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 102
    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->rootNamespaceCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->currentNamespaceCache:Ljava/util/Map;

    .line 104
    return-void
.end method

.method public contains(Lorg/dom4j/Namespace;)Z
    .locals 4
    .param p1, "namespace"    # Lorg/dom4j/Namespace;

    .prologue
    .line 166
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "prefix":Ljava/lang/String;
    const/4 v0, 0x0

    .line 169
    .local v0, "current":Lorg/dom4j/Namespace;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 170
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/NamespaceStack;->getDefaultNamespace()Lorg/dom4j/Namespace;

    move-result-object v0

    .line 175
    :goto_0
    if-nez v0, :cond_2

    .line 176
    const/4 v2, 0x0

    .line 183
    :goto_1
    return v2

    .line 172
    :cond_1
    invoke-virtual {p0, v1}, Lorg/dom4j/tree/NamespaceStack;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_2
    if-ne v0, p1, :cond_3

    .line 180
    const/4 v2, 0x1

    goto :goto_1

    .line 183
    :cond_3
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1
.end method

.method protected createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespaceURI"    # Ljava/lang/String;

    .prologue
    .line 407
    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->documentFactory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    return-object v0
.end method

.method protected createQName(Ljava/lang/String;Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;
    .locals 1
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .param p3, "namespace"    # Lorg/dom4j/Namespace;

    .prologue
    .line 392
    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->documentFactory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1, p3}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method protected findDefaultNamespace()Lorg/dom4j/Namespace;
    .locals 4

    .prologue
    .line 417
    iget-object v3, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 418
    iget-object v3, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Namespace;

    .line 420
    .local v1, "namespace":Lorg/dom4j/Namespace;
    if-eqz v1, :cond_1

    .line 421
    invoke-virtual {v1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, "prefix":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 429
    .end local v1    # "namespace":Lorg/dom4j/Namespace;
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v1

    .line 417
    .restart local v1    # "namespace":Lorg/dom4j/Namespace;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 429
    .end local v1    # "namespace":Lorg/dom4j/Namespace;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getAttributeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 7
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qualifiedName"    # Ljava/lang/String;

    .prologue
    .line 218
    if-nez p3, :cond_0

    .line 219
    move-object p3, p2

    .line 222
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/NamespaceStack;->getNamespaceCache()Ljava/util/Map;

    move-result-object v3

    .line 223
    .local v3, "map":Ljava/util/Map;
    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/QName;

    .line 225
    .local v0, "answer":Lorg/dom4j/QName;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 260
    .end local v0    # "answer":Lorg/dom4j/QName;
    .local v1, "answer":Lorg/dom4j/QName;
    :goto_0
    return-object v1

    .line 229
    .end local v1    # "answer":Lorg/dom4j/QName;
    .restart local v0    # "answer":Lorg/dom4j/QName;
    :cond_1
    if-nez p2, :cond_2

    .line 230
    move-object p2, p3

    .line 233
    :cond_2
    if-nez p1, :cond_3

    .line 234
    const-string p1, ""

    .line 237
    :cond_3
    const/4 v4, 0x0

    .line 238
    .local v4, "namespace":Lorg/dom4j/Namespace;
    const-string v5, ""

    .line 239
    .local v5, "prefix":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {p3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 241
    .local v2, "index":I
    if-lez v2, :cond_5

    .line 242
    const/4 v6, 0x0

    invoke-virtual {p3, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 243
    invoke-virtual {p0, v5, p1}, Lorg/dom4j/tree/NamespaceStack;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v4

    .line 245
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 246
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 257
    :cond_4
    :goto_1
    invoke-virtual {p0, p2, p3, v4, v5}, Lorg/dom4j/tree/NamespaceStack;->pushQName(Ljava/lang/String;Ljava/lang/String;Lorg/dom4j/Namespace;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    .line 258
    invoke-interface {v3, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 260
    .end local v0    # "answer":Lorg/dom4j/QName;
    .restart local v1    # "answer":Lorg/dom4j/QName;
    goto :goto_0

    .line 250
    .end local v1    # "answer":Lorg/dom4j/QName;
    .restart local v0    # "answer":Lorg/dom4j/QName;
    :cond_5
    sget-object v4, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    .line 252
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 253
    move-object p2, p3

    goto :goto_1
.end method

.method public getDefaultNamespace()Lorg/dom4j/Namespace;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->defaultNamespace:Lorg/dom4j/Namespace;

    if-nez v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lorg/dom4j/tree/NamespaceStack;->findDefaultNamespace()Lorg/dom4j/Namespace;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->defaultNamespace:Lorg/dom4j/Namespace;

    .line 348
    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->defaultNamespace:Lorg/dom4j/Namespace;

    return-object v0
.end method

.method public getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->documentFactory:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method public getNamespace(I)Lorg/dom4j/Namespace;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Namespace;

    return-object v0
.end method

.method protected getNamespaceCache()Ljava/util/Map;
    .locals 3

    .prologue
    .line 450
    iget-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->currentNamespaceCache:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 451
    iget-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 453
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 454
    iget-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->rootNamespaceCache:Ljava/util/Map;

    iput-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->currentNamespaceCache:Ljava/util/Map;

    .line 465
    .end local v0    # "index":I
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->currentNamespaceCache:Ljava/util/Map;

    return-object v1

    .line 456
    .restart local v0    # "index":I
    :cond_1
    iget-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->currentNamespaceCache:Ljava/util/Map;

    .line 458
    iget-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->currentNamespaceCache:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 459
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->currentNamespaceCache:Ljava/util/Map;

    .line 460
    iget-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceCacheList:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/dom4j/tree/NamespaceStack;->currentNamespaceCache:Ljava/util/Map;

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 129
    const-string p1, ""

    .line 132
    :cond_0
    iget-object v2, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 133
    iget-object v2, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Namespace;

    .line 135
    .local v1, "namespace":Lorg/dom4j/Namespace;
    invoke-virtual {v1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    .end local v1    # "namespace":Lorg/dom4j/Namespace;
    :goto_1
    return-object v1

    .line 132
    .restart local v1    # "namespace":Lorg/dom4j/Namespace;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 140
    .end local v1    # "namespace":Lorg/dom4j/Namespace;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qualifiedName"    # Ljava/lang/String;

    .prologue
    .line 188
    if-nez p2, :cond_3

    .line 189
    move-object p2, p3

    .line 194
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 195
    const-string p1, ""

    .line 198
    :cond_1
    const-string v2, ""

    .line 199
    .local v2, "prefix":Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 201
    .local v0, "index":I
    if-lez v0, :cond_4

    .line 202
    const/4 v3, 0x0

    invoke-virtual {p3, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 205
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 211
    :cond_2
    :goto_1
    invoke-virtual {p0, v2, p1}, Lorg/dom4j/tree/NamespaceStack;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v1

    .line 213
    .local v1, "namespace":Lorg/dom4j/Namespace;
    invoke-virtual {p0, p2, p3, v1, v2}, Lorg/dom4j/tree/NamespaceStack;->pushQName(Ljava/lang/String;Ljava/lang/String;Lorg/dom4j/Namespace;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v3

    return-object v3

    .line 190
    .end local v0    # "index":I
    .end local v1    # "namespace":Lorg/dom4j/Namespace;
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_3
    if-nez p3, :cond_0

    .line 191
    move-object p3, p2

    goto :goto_0

    .line 207
    .restart local v0    # "index":I
    .restart local v2    # "prefix":Ljava/lang/String;
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 208
    move-object p2, p3

    goto :goto_1
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/NamespaceStack;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    .line 154
    .local v0, "namespace":Lorg/dom4j/Namespace;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pop()Lorg/dom4j/Namespace;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/NamespaceStack;->remove(I)Lorg/dom4j/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public pop(Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 306
    if-nez p1, :cond_0

    .line 307
    const-string p1, ""

    .line 310
    :cond_0
    const/4 v1, 0x0

    .line 312
    .local v1, "namespace":Lorg/dom4j/Namespace;
    iget-object v3, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 313
    iget-object v3, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Namespace;

    .line 315
    .local v2, "ns":Lorg/dom4j/Namespace;
    invoke-virtual {v2}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 316
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/NamespaceStack;->remove(I)Lorg/dom4j/Namespace;

    .line 317
    move-object v1, v2

    .line 323
    .end local v2    # "ns":Lorg/dom4j/Namespace;
    :cond_1
    if-nez v1, :cond_2

    .line 324
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Warning: missing namespace prefix ignored: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 328
    :cond_2
    return-object v1

    .line 312
    .restart local v2    # "ns":Lorg/dom4j/Namespace;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public push(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 272
    if-nez p2, :cond_0

    .line 273
    const-string p2, ""

    .line 276
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/tree/NamespaceStack;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    .line 277
    .local v0, "namespace":Lorg/dom4j/Namespace;
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 278
    return-void
.end method

.method public push(Lorg/dom4j/Namespace;)V
    .locals 3
    .param p1, "namespace"    # Lorg/dom4j/Namespace;

    .prologue
    const/4 v2, 0x0

    .line 67
    iget-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iput-object v2, p0, Lorg/dom4j/tree/NamespaceStack;->currentNamespaceCache:Ljava/util/Map;

    .line 71
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "prefix":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 74
    :cond_0
    iput-object p1, p0, Lorg/dom4j/tree/NamespaceStack;->defaultNamespace:Lorg/dom4j/Namespace;

    .line 76
    :cond_1
    return-void
.end method

.method protected pushQName(Ljava/lang/String;Ljava/lang/String;Lorg/dom4j/Namespace;Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 1
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .param p3, "namespace"    # Lorg/dom4j/Namespace;
    .param p4, "prefix"    # Ljava/lang/String;

    .prologue
    .line 370
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 371
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->defaultNamespace:Lorg/dom4j/Namespace;

    .line 374
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/dom4j/tree/NamespaceStack;->createQName(Ljava/lang/String;Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method protected remove(I)Lorg/dom4j/Namespace;
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 441
    iget-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Namespace;

    .line 442
    .local v0, "namespace":Lorg/dom4j/Namespace;
    iget-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 443
    iput-object v2, p0, Lorg/dom4j/tree/NamespaceStack;->defaultNamespace:Lorg/dom4j/Namespace;

    .line 444
    iput-object v2, p0, Lorg/dom4j/tree/NamespaceStack;->currentNamespaceCache:Ljava/util/Map;

    .line 446
    return-object v0
.end method

.method public setDocumentFactory(Lorg/dom4j/DocumentFactory;)V
    .locals 0
    .param p1, "documentFactory"    # Lorg/dom4j/DocumentFactory;

    .prologue
    .line 340
    iput-object p1, p0, Lorg/dom4j/tree/NamespaceStack;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 341
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 332
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " Stack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
