.class public Lorg/dom4j/util/NodeComparator;
.super Ljava/lang/Object;
.source "NodeComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 79
    if-ne p1, p2, :cond_1

    .line 80
    const/4 v3, 0x0

    .line 108
    .end local p1    # "o1":Ljava/lang/Object;
    .end local p2    # "o2":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v3

    .line 81
    .restart local p1    # "o1":Ljava/lang/Object;
    .restart local p2    # "o2":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_0

    .line 84
    if-nez p2, :cond_2

    move v3, v4

    .line 85
    goto :goto_0

    .line 88
    :cond_2
    instance-of v5, p1, Lorg/dom4j/Node;

    if-eqz v5, :cond_4

    .line 89
    instance-of v3, p2, Lorg/dom4j/Node;

    if-eqz v3, :cond_3

    .line 90
    check-cast p1, Lorg/dom4j/Node;

    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, Lorg/dom4j/Node;

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Node;Lorg/dom4j/Node;)I

    move-result v3

    goto :goto_0

    .restart local p1    # "o1":Ljava/lang/Object;
    .restart local p2    # "o2":Ljava/lang/Object;
    :cond_3
    move v3, v4

    .line 93
    goto :goto_0

    .line 96
    :cond_4
    instance-of v4, p2, Lorg/dom4j/Node;

    if-nez v4, :cond_0

    .line 100
    instance-of v3, p1, Ljava/lang/Comparable;

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 101
    check-cast v0, Ljava/lang/Comparable;

    .line 103
    .local v0, "c1":Ljava/lang/Comparable;
    invoke-interface {v0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    goto :goto_0

    .line 105
    .end local v0    # "c1":Ljava/lang/Comparable;
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "name1":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "name2":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "o1"    # Ljava/lang/String;
    .param p2, "o2"    # Ljava/lang/String;

    .prologue
    .line 296
    if-ne p1, p2, :cond_0

    .line 297
    const/4 v0, 0x0

    .line 305
    :goto_0
    return v0

    .line 298
    :cond_0
    if-nez p1, :cond_1

    .line 300
    const/4 v0, -0x1

    goto :goto_0

    .line 301
    :cond_1
    if-nez p2, :cond_2

    .line 302
    const/4 v0, 0x1

    goto :goto_0

    .line 305
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public compare(Lorg/dom4j/Attribute;Lorg/dom4j/Attribute;)I
    .locals 3
    .param p1, "n1"    # Lorg/dom4j/Attribute;
    .param p2, "n2"    # Lorg/dom4j/Attribute;

    .prologue
    .line 199
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v1

    invoke-interface {p2}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/QName;Lorg/dom4j/QName;)I

    move-result v0

    .line 201
    .local v0, "answer":I
    if-nez v0, :cond_0

    .line 202
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 205
    :cond_0
    return v0
.end method

.method public compare(Lorg/dom4j/CharacterData;Lorg/dom4j/CharacterData;)I
    .locals 2
    .param p1, "t1"    # Lorg/dom4j/CharacterData;
    .param p2, "t2"    # Lorg/dom4j/CharacterData;

    .prologue
    .line 229
    invoke-interface {p1}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/dom4j/Document;Lorg/dom4j/Document;)I
    .locals 3
    .param p1, "n1"    # Lorg/dom4j/Document;
    .param p2, "n2"    # Lorg/dom4j/Document;

    .prologue
    .line 162
    invoke-interface {p1}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v1

    invoke-interface {p2}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/DocumentType;Lorg/dom4j/DocumentType;)I

    move-result v0

    .line 164
    .local v0, "answer":I
    if-nez v0, :cond_0

    .line 165
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compareContent(Lorg/dom4j/Branch;Lorg/dom4j/Branch;)I

    move-result v0

    .line 168
    :cond_0
    return v0
.end method

.method public compare(Lorg/dom4j/DocumentType;Lorg/dom4j/DocumentType;)I
    .locals 3
    .param p1, "o1"    # Lorg/dom4j/DocumentType;
    .param p2, "o2"    # Lorg/dom4j/DocumentType;

    .prologue
    .line 233
    if-ne p1, p2, :cond_1

    .line 234
    const/4 v0, 0x0

    .line 252
    :cond_0
    :goto_0
    return v0

    .line 235
    :cond_1
    if-nez p1, :cond_2

    .line 237
    const/4 v0, -0x1

    goto :goto_0

    .line 238
    :cond_2
    if-nez p2, :cond_3

    .line 239
    const/4 v0, 0x1

    goto :goto_0

    .line 242
    :cond_3
    invoke-interface {p1}, Lorg/dom4j/DocumentType;->getPublicID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/dom4j/DocumentType;->getPublicID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 244
    .local v0, "answer":I
    if-nez v0, :cond_0

    .line 245
    invoke-interface {p1}, Lorg/dom4j/DocumentType;->getSystemID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/dom4j/DocumentType;->getSystemID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 247
    if-nez v0, :cond_0

    .line 248
    invoke-interface {p1}, Lorg/dom4j/DocumentType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/dom4j/DocumentType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public compare(Lorg/dom4j/Element;Lorg/dom4j/Element;)I
    .locals 9
    .param p1, "n1"    # Lorg/dom4j/Element;
    .param p2, "n2"    # Lorg/dom4j/Element;

    .prologue
    .line 172
    invoke-interface {p1}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v7

    invoke-interface {p2}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/QName;Lorg/dom4j/QName;)I

    move-result v2

    .line 174
    .local v2, "answer":I
    if-nez v2, :cond_2

    .line 176
    invoke-interface {p1}, Lorg/dom4j/Element;->attributeCount()I

    move-result v4

    .line 177
    .local v4, "c1":I
    invoke-interface {p2}, Lorg/dom4j/Element;->attributeCount()I

    move-result v5

    .line 178
    .local v5, "c2":I
    sub-int v2, v4, v5

    .line 180
    if-nez v2, :cond_2

    .line 181
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_1

    .line 182
    invoke-interface {p1, v6}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 183
    .local v0, "a1":Lorg/dom4j/Attribute;
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v7

    invoke-interface {p2, v7}, Lorg/dom4j/Element;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v1

    .line 184
    .local v1, "a2":Lorg/dom4j/Attribute;
    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Attribute;Lorg/dom4j/Attribute;)I

    move-result v2

    .line 186
    if-eqz v2, :cond_0

    move v3, v2

    .line 195
    .end local v0    # "a1":Lorg/dom4j/Attribute;
    .end local v1    # "a2":Lorg/dom4j/Attribute;
    .end local v2    # "answer":I
    .end local v4    # "c1":I
    .end local v5    # "c2":I
    .end local v6    # "i":I
    .local v3, "answer":I
    :goto_1
    return v3

    .line 181
    .end local v3    # "answer":I
    .restart local v0    # "a1":Lorg/dom4j/Attribute;
    .restart local v1    # "a2":Lorg/dom4j/Attribute;
    .restart local v2    # "answer":I
    .restart local v4    # "c1":I
    .restart local v5    # "c2":I
    .restart local v6    # "i":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "a1":Lorg/dom4j/Attribute;
    .end local v1    # "a2":Lorg/dom4j/Attribute;
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compareContent(Lorg/dom4j/Branch;Lorg/dom4j/Branch;)I

    move-result v2

    .end local v4    # "c1":I
    .end local v5    # "c2":I
    .end local v6    # "i":I
    :cond_2
    move v3, v2

    .line 195
    .end local v2    # "answer":I
    .restart local v3    # "answer":I
    goto :goto_1
.end method

.method public compare(Lorg/dom4j/Entity;Lorg/dom4j/Entity;)I
    .locals 3
    .param p1, "n1"    # Lorg/dom4j/Entity;
    .param p2, "n2"    # Lorg/dom4j/Entity;

    .prologue
    .line 256
    invoke-interface {p1}, Lorg/dom4j/Entity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/dom4j/Entity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 258
    .local v0, "answer":I
    if-nez v0, :cond_0

    .line 259
    invoke-interface {p1}, Lorg/dom4j/Entity;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/dom4j/Entity;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 262
    :cond_0
    return v0
.end method

.method public compare(Lorg/dom4j/Namespace;Lorg/dom4j/Namespace;)I
    .locals 3
    .param p1, "n1"    # Lorg/dom4j/Namespace;
    .param p2, "n2"    # Lorg/dom4j/Namespace;

    .prologue
    .line 219
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 221
    .local v0, "answer":I
    if-nez v0, :cond_0

    .line 222
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 225
    :cond_0
    return v0
.end method

.method public compare(Lorg/dom4j/Node;Lorg/dom4j/Node;)I
    .locals 6
    .param p1, "n1"    # Lorg/dom4j/Node;
    .param p2, "n2"    # Lorg/dom4j/Node;

    .prologue
    .line 115
    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeType()S

    move-result v1

    .line 116
    .local v1, "nodeType1":I
    invoke-interface {p2}, Lorg/dom4j/Node;->getNodeType()S

    move-result v2

    .line 117
    .local v2, "nodeType2":I
    sub-int v0, v1, v2

    .line 119
    .local v0, "answer":I
    if-eqz v0, :cond_0

    .line 152
    .end local v0    # "answer":I
    .end local p1    # "n1":Lorg/dom4j/Node;
    .end local p2    # "n2":Lorg/dom4j/Node;
    :goto_0
    return v0

    .line 122
    .restart local v0    # "answer":I
    .restart local p1    # "n1":Lorg/dom4j/Node;
    .restart local p2    # "n2":Lorg/dom4j/Node;
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 155
    :pswitch_0
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Invalid node types. node1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " and node2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 124
    :pswitch_1
    check-cast p1, Lorg/dom4j/Element;

    .end local p1    # "n1":Lorg/dom4j/Node;
    check-cast p2, Lorg/dom4j/Element;

    .end local p2    # "n2":Lorg/dom4j/Node;
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Element;Lorg/dom4j/Element;)I

    move-result v0

    goto :goto_0

    .line 127
    .restart local p1    # "n1":Lorg/dom4j/Node;
    .restart local p2    # "n2":Lorg/dom4j/Node;
    :pswitch_2
    check-cast p1, Lorg/dom4j/Document;

    .end local p1    # "n1":Lorg/dom4j/Node;
    check-cast p2, Lorg/dom4j/Document;

    .end local p2    # "n2":Lorg/dom4j/Node;
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Document;Lorg/dom4j/Document;)I

    move-result v0

    goto :goto_0

    .line 130
    .restart local p1    # "n1":Lorg/dom4j/Node;
    .restart local p2    # "n2":Lorg/dom4j/Node;
    :pswitch_3
    check-cast p1, Lorg/dom4j/Attribute;

    .end local p1    # "n1":Lorg/dom4j/Node;
    check-cast p2, Lorg/dom4j/Attribute;

    .end local p2    # "n2":Lorg/dom4j/Node;
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Attribute;Lorg/dom4j/Attribute;)I

    move-result v0

    goto :goto_0

    .line 133
    .restart local p1    # "n1":Lorg/dom4j/Node;
    .restart local p2    # "n2":Lorg/dom4j/Node;
    :pswitch_4
    check-cast p1, Lorg/dom4j/Text;

    .end local p1    # "n1":Lorg/dom4j/Node;
    check-cast p2, Lorg/dom4j/Text;

    .end local p2    # "n2":Lorg/dom4j/Node;
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/CharacterData;Lorg/dom4j/CharacterData;)I

    move-result v0

    goto :goto_0

    .line 136
    .restart local p1    # "n1":Lorg/dom4j/Node;
    .restart local p2    # "n2":Lorg/dom4j/Node;
    :pswitch_5
    check-cast p1, Lorg/dom4j/CDATA;

    .end local p1    # "n1":Lorg/dom4j/Node;
    check-cast p2, Lorg/dom4j/CDATA;

    .end local p2    # "n2":Lorg/dom4j/Node;
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/CharacterData;Lorg/dom4j/CharacterData;)I

    move-result v0

    goto :goto_0

    .line 139
    .restart local p1    # "n1":Lorg/dom4j/Node;
    .restart local p2    # "n2":Lorg/dom4j/Node;
    :pswitch_6
    check-cast p1, Lorg/dom4j/Entity;

    .end local p1    # "n1":Lorg/dom4j/Node;
    check-cast p2, Lorg/dom4j/Entity;

    .end local p2    # "n2":Lorg/dom4j/Node;
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Entity;Lorg/dom4j/Entity;)I

    move-result v0

    goto :goto_0

    .line 142
    .restart local p1    # "n1":Lorg/dom4j/Node;
    .restart local p2    # "n2":Lorg/dom4j/Node;
    :pswitch_7
    check-cast p1, Lorg/dom4j/ProcessingInstruction;

    .end local p1    # "n1":Lorg/dom4j/Node;
    check-cast p2, Lorg/dom4j/ProcessingInstruction;

    .end local p2    # "n2":Lorg/dom4j/Node;
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/ProcessingInstruction;Lorg/dom4j/ProcessingInstruction;)I

    move-result v0

    goto :goto_0

    .line 146
    .restart local p1    # "n1":Lorg/dom4j/Node;
    .restart local p2    # "n2":Lorg/dom4j/Node;
    :pswitch_8
    check-cast p1, Lorg/dom4j/Comment;

    .end local p1    # "n1":Lorg/dom4j/Node;
    check-cast p2, Lorg/dom4j/Comment;

    .end local p2    # "n2":Lorg/dom4j/Node;
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/CharacterData;Lorg/dom4j/CharacterData;)I

    move-result v0

    goto :goto_0

    .line 149
    .restart local p1    # "n1":Lorg/dom4j/Node;
    .restart local p2    # "n2":Lorg/dom4j/Node;
    :pswitch_9
    check-cast p1, Lorg/dom4j/DocumentType;

    .end local p1    # "n1":Lorg/dom4j/Node;
    check-cast p2, Lorg/dom4j/DocumentType;

    .end local p2    # "n2":Lorg/dom4j/Node;
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/DocumentType;Lorg/dom4j/DocumentType;)I

    move-result v0

    goto :goto_0

    .line 152
    .restart local p1    # "n1":Lorg/dom4j/Node;
    .restart local p2    # "n2":Lorg/dom4j/Node;
    :pswitch_a
    check-cast p1, Lorg/dom4j/Namespace;

    .end local p1    # "n1":Lorg/dom4j/Node;
    check-cast p2, Lorg/dom4j/Namespace;

    .end local p2    # "n2":Lorg/dom4j/Node;
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Namespace;Lorg/dom4j/Namespace;)I

    move-result v0

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public compare(Lorg/dom4j/ProcessingInstruction;Lorg/dom4j/ProcessingInstruction;)I
    .locals 3
    .param p1, "n1"    # Lorg/dom4j/ProcessingInstruction;
    .param p2, "n2"    # Lorg/dom4j/ProcessingInstruction;

    .prologue
    .line 266
    invoke-interface {p1}, Lorg/dom4j/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/dom4j/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 268
    .local v0, "answer":I
    if-nez v0, :cond_0

    .line 269
    invoke-interface {p1}, Lorg/dom4j/ProcessingInstruction;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/dom4j/ProcessingInstruction;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 272
    :cond_0
    return v0
.end method

.method public compare(Lorg/dom4j/QName;Lorg/dom4j/QName;)I
    .locals 3
    .param p1, "n1"    # Lorg/dom4j/QName;
    .param p2, "n2"    # Lorg/dom4j/QName;

    .prologue
    .line 209
    invoke-virtual {p1}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 211
    .local v0, "answer":I
    if-nez v0, :cond_0

    .line 212
    invoke-virtual {p1}, Lorg/dom4j/QName;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/dom4j/QName;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 215
    :cond_0
    return v0
.end method

.method public compareContent(Lorg/dom4j/Branch;Lorg/dom4j/Branch;)I
    .locals 6
    .param p1, "b1"    # Lorg/dom4j/Branch;
    .param p2, "b2"    # Lorg/dom4j/Branch;

    .prologue
    .line 276
    invoke-interface {p1}, Lorg/dom4j/Branch;->nodeCount()I

    move-result v1

    .line 277
    .local v1, "c1":I
    invoke-interface {p2}, Lorg/dom4j/Branch;->nodeCount()I

    move-result v2

    .line 278
    .local v2, "c2":I
    sub-int v0, v1, v2

    .line 280
    .local v0, "answer":I
    if-nez v0, :cond_0

    .line 281
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 282
    invoke-interface {p1, v3}, Lorg/dom4j/Branch;->node(I)Lorg/dom4j/Node;

    move-result-object v4

    .line 283
    .local v4, "n1":Lorg/dom4j/Node;
    invoke-interface {p2, v3}, Lorg/dom4j/Branch;->node(I)Lorg/dom4j/Node;

    move-result-object v5

    .line 284
    .local v5, "n2":Lorg/dom4j/Node;
    invoke-virtual {p0, v4, v5}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Node;Lorg/dom4j/Node;)I

    move-result v0

    .line 286
    if-eqz v0, :cond_1

    .line 292
    .end local v3    # "i":I
    .end local v4    # "n1":Lorg/dom4j/Node;
    .end local v5    # "n2":Lorg/dom4j/Node;
    :cond_0
    return v0

    .line 281
    .restart local v3    # "i":I
    .restart local v4    # "n1":Lorg/dom4j/Node;
    .restart local v5    # "n2":Lorg/dom4j/Node;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
