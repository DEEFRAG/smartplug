.class public Lorg/jdom/input/DOMBuilder;
.super Ljava/lang/Object;
.source "DOMBuilder.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: DOMBuilder.java,v $ $Revision: 1.60 $ $Date: 2007/11/10 05:29:00 $ $Name: jdom_1_1 $"


# instance fields
.field private adapterClass:Ljava/lang/String;

.field private factory:Lorg/jdom/JDOMFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lorg/jdom/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom/DefaultJDOMFactory;-><init>()V

    iput-object v0, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "adapterClass"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lorg/jdom/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom/DefaultJDOMFactory;-><init>()V

    iput-object v0, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    .line 106
    iput-object p1, p0, Lorg/jdom/input/DOMBuilder;->adapterClass:Ljava/lang/String;

    .line 107
    return-void
.end method

.method private buildTree(Lorg/w3c/dom/Node;Lorg/jdom/Document;Lorg/jdom/Element;Z)V
    .locals 39
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "doc"    # Lorg/jdom/Document;
    .param p3, "current"    # Lorg/jdom/Element;
    .param p4, "atRoot"    # Z

    .prologue
    .line 166
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v35

    packed-switch v35, :pswitch_data_0

    .line 340
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 168
    :pswitch_1
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v28

    .line 169
    .local v28, "nodes":Lorg/w3c/dom/NodeList;
    const/16 v23, 0x0

    .local v23, "i":I
    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v32

    .local v32, "size":I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v32

    if-ge v0, v1, :cond_0

    .line 170
    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    const/16 v36, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jdom/input/DOMBuilder;->buildTree(Lorg/w3c/dom/Node;Lorg/jdom/Document;Lorg/jdom/Element;Z)V

    .line 169
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 175
    .end local v23    # "i":I
    .end local v28    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v32    # "size":I
    :pswitch_2
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v27

    .line 176
    .local v27, "nodeName":Ljava/lang/String;
    const-string v30, ""

    .line 177
    .local v30, "prefix":Ljava/lang/String;
    move-object/from16 v26, v27

    .line 178
    .local v26, "localName":Ljava/lang/String;
    const/16 v35, 0x3a

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .line 179
    .local v16, "colon":I
    if-ltz v16, :cond_1

    .line 180
    const/16 v35, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v35

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    .line 181
    add-int/lit8 v35, v16, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    .line 185
    :cond_1
    const/16 v29, 0x0

    .line 186
    .local v29, "ns":Lorg/jdom/Namespace;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v34

    .line 187
    .local v34, "uri":Ljava/lang/String;
    if-nez v34, :cond_5

    .line 188
    if-nez p3, :cond_4

    sget-object v29, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    .line 195
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v26

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/jdom/JDOMFactory;->element(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;

    move-result-object v21

    .line 197
    .local v21, "element":Lorg/jdom/Element;
    if-eqz p4, :cond_6

    .line 199
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/jdom/Document;->setRootElement(Lorg/jdom/Element;)Lorg/jdom/Document;

    .line 206
    :goto_3
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    .line 207
    .local v11, "attributeList":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v11}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v12

    .line 209
    .local v12, "attsize":I
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_4
    move/from16 v0, v23

    if-ge v0, v12, :cond_8

    .line 210
    move/from16 v0, v23

    invoke-interface {v11, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Attr;

    .line 212
    .local v5, "att":Lorg/w3c/dom/Attr;
    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v8

    .line 213
    .local v8, "attname":Ljava/lang/String;
    const-string v35, "xmlns"

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_3

    .line 214
    const-string v7, ""

    .line 215
    .local v7, "attPrefix":Ljava/lang/String;
    const/16 v35, 0x3a

    move/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .line 216
    if-ltz v16, :cond_2

    .line 217
    add-int/lit8 v35, v16, 0x1

    move/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 220
    :cond_2
    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 222
    .local v13, "attvalue":Ljava/lang/String;
    invoke-static {v7, v13}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v18

    .line 230
    .local v18, "declaredNS":Lorg/jdom/Namespace;
    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_7

    .line 231
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/jdom/Element;->setNamespace(Lorg/jdom/Namespace;)Lorg/jdom/Element;

    .line 209
    .end local v7    # "attPrefix":Ljava/lang/String;
    .end local v13    # "attvalue":Ljava/lang/String;
    .end local v18    # "declaredNS":Lorg/jdom/Namespace;
    :cond_3
    :goto_5
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .line 188
    .end local v5    # "att":Lorg/w3c/dom/Attr;
    .end local v8    # "attname":Ljava/lang/String;
    .end local v11    # "attributeList":Lorg/w3c/dom/NamedNodeMap;
    .end local v12    # "attsize":I
    .end local v21    # "element":Lorg/jdom/Element;
    .end local v23    # "i":I
    :cond_4
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/jdom/Element;->getNamespace(Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v29

    goto :goto_2

    .line 192
    :cond_5
    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v29

    goto :goto_2

    .line 202
    .restart local v21    # "element":Lorg/jdom/Element;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p3

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto :goto_3

    .line 234
    .restart local v5    # "att":Lorg/w3c/dom/Attr;
    .restart local v7    # "attPrefix":Ljava/lang/String;
    .restart local v8    # "attname":Ljava/lang/String;
    .restart local v11    # "attributeList":Lorg/w3c/dom/NamedNodeMap;
    .restart local v12    # "attsize":I
    .restart local v13    # "attvalue":Ljava/lang/String;
    .restart local v18    # "declaredNS":Lorg/jdom/Namespace;
    .restart local v23    # "i":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/jdom/JDOMFactory;->addNamespaceDeclaration(Lorg/jdom/Element;Lorg/jdom/Namespace;)V

    goto :goto_5

    .line 240
    .end local v5    # "att":Lorg/w3c/dom/Attr;
    .end local v7    # "attPrefix":Ljava/lang/String;
    .end local v8    # "attname":Ljava/lang/String;
    .end local v13    # "attvalue":Ljava/lang/String;
    .end local v18    # "declaredNS":Lorg/jdom/Namespace;
    :cond_8
    const/16 v23, 0x0

    :goto_6
    move/from16 v0, v23

    if-ge v0, v12, :cond_c

    .line 241
    move/from16 v0, v23

    invoke-interface {v11, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Attr;

    .line 243
    .restart local v5    # "att":Lorg/w3c/dom/Attr;
    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v8

    .line 245
    .restart local v8    # "attname":Ljava/lang/String;
    const-string v35, "xmlns"

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_a

    .line 246
    const-string v7, ""

    .line 247
    .restart local v7    # "attPrefix":Ljava/lang/String;
    move-object v6, v8

    .line 248
    .local v6, "attLocalName":Ljava/lang/String;
    const/16 v35, 0x3a

    move/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .line 249
    if-ltz v16, :cond_9

    .line 250
    const/16 v35, 0x0

    move/from16 v0, v35

    move/from16 v1, v16

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 251
    add-int/lit8 v35, v16, 0x1

    move/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 254
    :cond_9
    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 257
    .restart local v13    # "attvalue":Ljava/lang/String;
    const/4 v9, 0x0

    .line 258
    .local v9, "attns":Lorg/jdom/Namespace;
    const-string v35, ""

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_b

    .line 259
    sget-object v9, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    .line 265
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-interface {v0, v6, v13, v9}, Lorg/jdom/JDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Attribute;

    move-result-object v10

    .line 267
    .local v10, "attribute":Lorg/jdom/Attribute;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v10}, Lorg/jdom/JDOMFactory;->setAttribute(Lorg/jdom/Element;Lorg/jdom/Attribute;)V

    .line 240
    .end local v6    # "attLocalName":Ljava/lang/String;
    .end local v7    # "attPrefix":Ljava/lang/String;
    .end local v9    # "attns":Lorg/jdom/Namespace;
    .end local v10    # "attribute":Lorg/jdom/Attribute;
    .end local v13    # "attvalue":Ljava/lang/String;
    :cond_a
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 262
    .restart local v6    # "attLocalName":Ljava/lang/String;
    .restart local v7    # "attPrefix":Ljava/lang/String;
    .restart local v9    # "attns":Lorg/jdom/Namespace;
    .restart local v13    # "attvalue":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lorg/jdom/Element;->getNamespace(Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v9

    goto :goto_7

    .line 274
    .end local v5    # "att":Lorg/w3c/dom/Attr;
    .end local v6    # "attLocalName":Ljava/lang/String;
    .end local v7    # "attPrefix":Ljava/lang/String;
    .end local v8    # "attname":Ljava/lang/String;
    .end local v9    # "attns":Lorg/jdom/Namespace;
    .end local v13    # "attvalue":Ljava/lang/String;
    :cond_c
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 275
    .local v15, "children":Lorg/w3c/dom/NodeList;
    if-eqz v15, :cond_0

    .line 276
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v32

    .line 277
    .restart local v32    # "size":I
    const/16 v23, 0x0

    :goto_8
    move/from16 v0, v23

    move/from16 v1, v32

    if-ge v0, v1, :cond_0

    .line 278
    move/from16 v0, v23

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    .line 279
    .local v25, "item":Lorg/w3c/dom/Node;
    if-eqz v25, :cond_d

    .line 280
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    move/from16 v4, v35

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jdom/input/DOMBuilder;->buildTree(Lorg/w3c/dom/Node;Lorg/jdom/Document;Lorg/jdom/Element;Z)V

    .line 277
    :cond_d
    add-int/lit8 v23, v23, 0x1

    goto :goto_8

    .line 287
    .end local v11    # "attributeList":Lorg/w3c/dom/NamedNodeMap;
    .end local v12    # "attsize":I
    .end local v15    # "children":Lorg/w3c/dom/NodeList;
    .end local v16    # "colon":I
    .end local v21    # "element":Lorg/jdom/Element;
    .end local v23    # "i":I
    .end local v25    # "item":Lorg/w3c/dom/Node;
    .end local v26    # "localName":Ljava/lang/String;
    .end local v27    # "nodeName":Ljava/lang/String;
    .end local v29    # "ns":Lorg/jdom/Namespace;
    .end local v30    # "prefix":Ljava/lang/String;
    .end local v32    # "size":I
    .end local v34    # "uri":Ljava/lang/String;
    :pswitch_3
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    .line 288
    .local v17, "data":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/jdom/JDOMFactory;->text(Ljava/lang/String;)Lorg/jdom/Text;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, p3

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto/16 :goto_0

    .line 292
    .end local v17    # "data":Ljava/lang/String;
    :pswitch_4
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 293
    .local v14, "cdata":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-interface {v0, v14}, Lorg/jdom/JDOMFactory;->cdata(Ljava/lang/String;)Lorg/jdom/CDATA;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, p3

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto/16 :goto_0

    .line 298
    .end local v14    # "cdata":Ljava/lang/String;
    :pswitch_5
    if-eqz p4, :cond_e

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    move-object/from16 v36, v0

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v37

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v38

    invoke-interface/range {v36 .. v38}, Lorg/jdom/JDOMFactory;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, p2

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto/16 :goto_0

    .line 303
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    move-object/from16 v36, v0

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v37

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v38

    invoke-interface/range {v36 .. v38}, Lorg/jdom/JDOMFactory;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, p3

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto/16 :goto_0

    .line 310
    :pswitch_6
    if-eqz p4, :cond_f

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    move-object/from16 v36, v0

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v37

    invoke-interface/range {v36 .. v37}, Lorg/jdom/JDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom/Comment;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, p2

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto/16 :goto_0

    .line 313
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    move-object/from16 v36, v0

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v37

    invoke-interface/range {v36 .. v37}, Lorg/jdom/JDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom/Comment;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, p3

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto/16 :goto_0

    .line 318
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    move-object/from16 v35, v0

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lorg/jdom/JDOMFactory;->entityRef(Ljava/lang/String;)Lorg/jdom/EntityRef;

    move-result-object v22

    .line 319
    .local v22, "entity":Lorg/jdom/EntityRef;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p3

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto/16 :goto_0

    .end local v22    # "entity":Lorg/jdom/EntityRef;
    :pswitch_8
    move-object/from16 v20, p1

    .line 327
    check-cast v20, Lorg/w3c/dom/DocumentType;

    .line 328
    .local v20, "domDocType":Lorg/w3c/dom/DocumentType;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v31

    .line 329
    .local v31, "publicID":Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v33

    .line 330
    .local v33, "systemID":Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v24

    .line 332
    .local v24, "internalDTD":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    move-object/from16 v35, v0

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lorg/jdom/JDOMFactory;->docType(Ljava/lang/String;)Lorg/jdom/DocType;

    move-result-object v19

    .line 333
    .local v19, "docType":Lorg/jdom/DocType;
    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/jdom/DocType;->setPublicID(Ljava/lang/String;)Lorg/jdom/DocType;

    .line 334
    move-object/from16 v0, v19

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jdom/DocType;->setSystemID(Ljava/lang/String;)Lorg/jdom/DocType;

    .line 335
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/jdom/DocType;->setInternalSubset(Ljava/lang/String;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto/16 :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public build(Lorg/w3c/dom/Document;)Lorg/jdom/Document;
    .locals 3
    .param p1, "domDocument"    # Lorg/w3c/dom/Document;

    .prologue
    const/4 v2, 0x0

    .line 134
    iget-object v1, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v1, v2}, Lorg/jdom/JDOMFactory;->document(Lorg/jdom/Element;)Lorg/jdom/Document;

    move-result-object v0

    .line 135
    .local v0, "doc":Lorg/jdom/Document;
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v2, v1}, Lorg/jdom/input/DOMBuilder;->buildTree(Lorg/w3c/dom/Node;Lorg/jdom/Document;Lorg/jdom/Element;Z)V

    .line 136
    return-object v0
.end method

.method public build(Lorg/w3c/dom/Element;)Lorg/jdom/Element;
    .locals 3
    .param p1, "domElement"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v2, 0x0

    .line 146
    iget-object v1, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v1, v2}, Lorg/jdom/JDOMFactory;->document(Lorg/jdom/Element;)Lorg/jdom/Document;

    move-result-object v0

    .line 147
    .local v0, "doc":Lorg/jdom/Document;
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v2, v1}, Lorg/jdom/input/DOMBuilder;->buildTree(Lorg/w3c/dom/Node;Lorg/jdom/Document;Lorg/jdom/Element;Z)V

    .line 148
    invoke-virtual {v0}, Lorg/jdom/Document;->getRootElement()Lorg/jdom/Element;

    move-result-object v1

    return-object v1
.end method

.method public getFactory()Lorg/jdom/JDOMFactory;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    return-object v0
.end method

.method public setFactory(Lorg/jdom/JDOMFactory;)V
    .locals 0
    .param p1, "factory"    # Lorg/jdom/JDOMFactory;

    .prologue
    .line 116
    iput-object p1, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    .line 117
    return-void
.end method
