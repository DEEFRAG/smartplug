.class public Lorg/jdom/output/DOMOutputter;
.super Ljava/lang/Object;
.source "DOMOutputter.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: DOMOutputter.java,v $ $Revision: 1.43 $ $Date: 2007/11/10 05:29:01 $ $Name: jdom_1_1 $"

.field private static final DEFAULT_ADAPTER_CLASS:Ljava/lang/String; = "org.jdom.adapters.XercesDOMAdapter"


# instance fields
.field private adapterClass:Ljava/lang/String;

.field private forceNamespaceAware:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "adapterClass"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lorg/jdom/output/DOMOutputter;->adapterClass:Ljava/lang/String;

    .line 111
    return-void
.end method

.method private createDOMDocument(Lorg/jdom/DocType;)Lorg/w3c/dom/Document;
    .locals 3
    .param p1, "dt"    # Lorg/jdom/DocType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v1, p0, Lorg/jdom/output/DOMOutputter;->adapterClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 206
    :try_start_0
    iget-object v1, p0, Lorg/jdom/output/DOMOutputter;->adapterClass:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/adapters/DOMAdapter;

    .line 209
    .local v0, "adapter":Lorg/jdom/adapters/DOMAdapter;
    invoke-interface {v0, p1}, Lorg/jdom/adapters/DOMAdapter;->createDocument(Lorg/jdom/DocType;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v1

    .line 245
    :goto_0
    return-object v1

    .line 224
    .end local v0    # "adapter":Lorg/jdom/adapters/DOMAdapter;
    :cond_0
    :try_start_1
    const-string v1, "org.jdom.adapters.JAXPDOMAdapter"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/adapters/DOMAdapter;

    .line 228
    .restart local v0    # "adapter":Lorg/jdom/adapters/DOMAdapter;
    invoke-interface {v0, p1}, Lorg/jdom/adapters/DOMAdapter;->createDocument(Lorg/jdom/DocType;)Lorg/w3c/dom/Document;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 236
    .end local v0    # "adapter":Lorg/jdom/adapters/DOMAdapter;
    :catch_0
    move-exception v1

    .line 243
    :goto_1
    :try_start_2
    const-string v1, "org.jdom.adapters.XercesDOMAdapter"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/adapters/DOMAdapter;

    .line 245
    .restart local v0    # "adapter":Lorg/jdom/adapters/DOMAdapter;
    invoke-interface {v0, p1}, Lorg/jdom/adapters/DOMAdapter;->createDocument(Lorg/jdom/DocType;)Lorg/w3c/dom/Document;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto :goto_0

    .line 255
    .end local v0    # "adapter":Lorg/jdom/adapters/DOMAdapter;
    :catch_1
    move-exception v1

    .line 259
    :goto_2
    new-instance v1, Lorg/jdom/JDOMException;

    const-string v2, "No JAXP or default parser available"

    invoke-direct {v1, v2}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    :catch_2
    move-exception v1

    goto :goto_2

    .line 249
    :catch_3
    move-exception v1

    goto :goto_2

    .line 233
    :catch_4
    move-exception v1

    goto :goto_1

    .line 230
    :catch_5
    move-exception v1

    goto :goto_1

    .line 217
    :catch_6
    move-exception v1

    goto :goto_1

    .line 214
    :catch_7
    move-exception v1

    goto :goto_1

    .line 211
    :catch_8
    move-exception v1

    goto :goto_1
.end method

.method private static getXmlnsTagFor(Lorg/jdom/Namespace;)Ljava/lang/String;
    .locals 3
    .param p0, "ns"    # Lorg/jdom/Namespace;

    .prologue
    .line 447
    const-string v0, "xmlns"

    .line 448
    .local v0, "attrName":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 449
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 450
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 452
    :cond_0
    return-object v0
.end method

.method private output(Lorg/jdom/Attribute;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Attr;
    .locals 5
    .param p1, "attribute"    # Lorg/jdom/Attribute;
    .param p2, "domDoc"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 418
    const/4 v0, 0x0

    .line 420
    .local v0, "domAttr":Lorg/w3c/dom/Attr;
    :try_start_0
    invoke-virtual {p1}, Lorg/jdom/Attribute;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v2

    sget-object v3, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    if-ne v2, v3, :cond_1

    .line 422
    iget-boolean v2, p0, Lorg/jdom/output/DOMOutputter;->forceNamespaceAware:Z

    if-eqz v2, :cond_0

    .line 423
    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/jdom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 432
    :goto_0
    invoke-virtual {p1}, Lorg/jdom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 437
    return-object v0

    .line 425
    :cond_0
    invoke-virtual {p1}, Lorg/jdom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    goto :goto_0

    .line 429
    :cond_1
    invoke-virtual {p1}, Lorg/jdom/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jdom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 433
    :catch_0
    move-exception v1

    .line 434
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/jdom/JDOMException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Exception outputting Attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p1}, Lorg/jdom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private output(Lorg/jdom/Element;Lorg/w3c/dom/Document;Lorg/jdom/output/NamespaceStack;)Lorg/w3c/dom/Element;
    .locals 30
    .param p1, "element"    # Lorg/jdom/Element;
    .param p2, "domDoc"    # Lorg/w3c/dom/Document;
    .param p3, "namespaces"    # Lorg/jdom/output/NamespaceStack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 268
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lorg/jdom/output/NamespaceStack;->size()I

    move-result v23

    .line 270
    .local v23, "previouslyDeclaredNamespaces":I
    const/4 v10, 0x0

    .line 271
    .local v10, "domElement":Lorg/w3c/dom/Element;
    invoke-virtual/range {p1 .. p1}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v27

    sget-object v28, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_4

    .line 273
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jdom/output/DOMOutputter;->forceNamespaceAware:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3

    const/16 v27, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/jdom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 287
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v19

    .line 288
    .local v19, "ns":Lorg/jdom/Namespace;
    sget-object v27, Lorg/jdom/Namespace;->XML_NAMESPACE:Lorg/jdom/Namespace;

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_1

    sget-object v27, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_0

    const-string v27, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/jdom/output/NamespaceStack;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_1

    .line 291
    :cond_0
    invoke-virtual/range {v19 .. v19}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v22

    .line 292
    .local v22, "prefix":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jdom/output/NamespaceStack;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 293
    .local v26, "uri":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_1

    .line 294
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jdom/output/NamespaceStack;->push(Lorg/jdom/Namespace;)V

    .line 295
    invoke-static/range {v19 .. v19}, Lorg/jdom/output/DOMOutputter;->getXmlnsTagFor(Lorg/jdom/Namespace;)Ljava/lang/String;

    move-result-object v4

    .line 296
    .local v4, "attrName":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v10, v4, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .end local v4    # "attrName":Ljava/lang/String;
    .end local v22    # "prefix":Ljava/lang/String;
    .end local v26    # "uri":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/jdom/Element;->getAdditionalNamespaces()Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 302
    .local v17, "itr":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_5

    .line 303
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom/Namespace;

    .line 304
    .local v3, "additional":Lorg/jdom/Namespace;
    invoke-virtual {v3}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v22

    .line 305
    .restart local v22    # "prefix":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jdom/output/NamespaceStack;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 306
    .restart local v26    # "uri":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_2

    .line 307
    invoke-static {v3}, Lorg/jdom/output/DOMOutputter;->getXmlnsTagFor(Lorg/jdom/Namespace;)Ljava/lang/String;

    move-result-object v4

    .line 308
    .restart local v4    # "attrName":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v10, v4, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/jdom/output/NamespaceStack;->push(Lorg/jdom/Namespace;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 409
    .end local v3    # "additional":Lorg/jdom/Namespace;
    .end local v4    # "attrName":Ljava/lang/String;
    .end local v10    # "domElement":Lorg/w3c/dom/Element;
    .end local v17    # "itr":Ljava/util/Iterator;
    .end local v19    # "ns":Lorg/jdom/Namespace;
    .end local v22    # "prefix":Ljava/lang/String;
    .end local v23    # "previouslyDeclaredNamespaces":I
    .end local v26    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 410
    .local v15, "e":Ljava/lang/Exception;
    new-instance v27, Lorg/jdom/JDOMException;

    new-instance v28, Ljava/lang/StringBuffer;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    const-string v29, "Exception outputting Element "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Lorg/jdom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v15}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v27

    .line 273
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v10    # "domElement":Lorg/w3c/dom/Element;
    .restart local v23    # "previouslyDeclaredNamespaces":I
    :cond_3
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/jdom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    goto/16 :goto_0

    .line 277
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/jdom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Lorg/jdom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    goto/16 :goto_0

    .line 314
    .restart local v17    # "itr":Ljava/util/Iterator;
    .restart local v19    # "ns":Lorg/jdom/Namespace;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/jdom/Element;->getAttributes()Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 315
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_9

    .line 316
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jdom/Attribute;

    .line 317
    .local v5, "attribute":Lorg/jdom/Attribute;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1}, Lorg/jdom/output/DOMOutputter;->output(Lorg/jdom/Attribute;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Attr;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 318
    invoke-virtual {v5}, Lorg/jdom/Attribute;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v20

    .line 319
    .local v20, "ns1":Lorg/jdom/Namespace;
    sget-object v27, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_6

    sget-object v27, Lorg/jdom/Namespace;->XML_NAMESPACE:Lorg/jdom/Namespace;

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_6

    .line 321
    invoke-virtual/range {v20 .. v20}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v22

    .line 322
    .restart local v22    # "prefix":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jdom/output/NamespaceStack;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 323
    .restart local v26    # "uri":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_6

    .line 324
    invoke-static/range {v20 .. v20}, Lorg/jdom/output/DOMOutputter;->getXmlnsTagFor(Lorg/jdom/Namespace;)Ljava/lang/String;

    move-result-object v4

    .line 325
    .restart local v4    # "attrName":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v10, v4, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/jdom/output/NamespaceStack;->push(Lorg/jdom/Namespace;)V

    .line 330
    .end local v4    # "attrName":Ljava/lang/String;
    .end local v22    # "prefix":Ljava/lang/String;
    .end local v26    # "uri":Ljava/lang/String;
    :cond_6
    invoke-virtual {v5}, Lorg/jdom/Attribute;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v27

    sget-object v28, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 332
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jdom/output/DOMOutputter;->forceNamespaceAware:Z

    move/from16 v27, v0

    if-eqz v27, :cond_7

    .line 333
    const/16 v27, 0x0

    invoke-virtual {v5}, Lorg/jdom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v5}, Lorg/jdom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v10, v0, v1, v2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 337
    :cond_7
    invoke-virtual {v5}, Lorg/jdom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v5}, Lorg/jdom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-interface {v10, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 342
    :cond_8
    invoke-virtual {v5}, Lorg/jdom/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v5}, Lorg/jdom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v5}, Lorg/jdom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v10, v0, v1, v2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 349
    .end local v5    # "attribute":Lorg/jdom/Attribute;
    .end local v20    # "ns1":Lorg/jdom/Namespace;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lorg/jdom/Element;->getContent()Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 350
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_11

    .line 351
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .line 353
    .local v18, "node":Ljava/lang/Object;
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/jdom/Element;

    move/from16 v27, v0

    if-eqz v27, :cond_a

    .line 354
    move-object/from16 v0, v18

    check-cast v0, Lorg/jdom/Element;

    move-object v15, v0

    .line 355
    .local v15, "e":Lorg/jdom/Element;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v15, v1, v2}, Lorg/jdom/output/DOMOutputter;->output(Lorg/jdom/Element;Lorg/w3c/dom/Document;Lorg/jdom/output/NamespaceStack;)Lorg/w3c/dom/Element;

    move-result-object v11

    .line 356
    .local v11, "domElt":Lorg/w3c/dom/Element;
    invoke-interface {v10, v11}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_3

    .line 358
    .end local v11    # "domElt":Lorg/w3c/dom/Element;
    .end local v15    # "e":Lorg/jdom/Element;
    :cond_a
    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v27, v0

    if-eqz v27, :cond_b

    .line 359
    move-object/from16 v0, v18

    check-cast v0, Ljava/lang/String;

    move-object/from16 v24, v0

    .line 360
    .local v24, "str":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v14

    .line 361
    .local v14, "domText":Lorg/w3c/dom/Text;
    invoke-interface {v10, v14}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_3

    .line 363
    .end local v14    # "domText":Lorg/w3c/dom/Text;
    .end local v24    # "str":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/jdom/CDATA;

    move/from16 v27, v0

    if-eqz v27, :cond_c

    .line 364
    move-object/from16 v0, v18

    check-cast v0, Lorg/jdom/CDATA;

    move-object v6, v0

    .line 365
    .local v6, "cdata":Lorg/jdom/CDATA;
    invoke-virtual {v6}, Lorg/jdom/CDATA;->getText()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v8

    .line 367
    .local v8, "domCdata":Lorg/w3c/dom/CDATASection;
    invoke-interface {v10, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_3

    .line 369
    .end local v6    # "cdata":Lorg/jdom/CDATA;
    .end local v8    # "domCdata":Lorg/w3c/dom/CDATASection;
    :cond_c
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/jdom/Text;

    move/from16 v27, v0

    if-eqz v27, :cond_d

    .line 370
    move-object/from16 v0, v18

    check-cast v0, Lorg/jdom/Text;

    move-object/from16 v25, v0

    .line 371
    .local v25, "text":Lorg/jdom/Text;
    invoke-virtual/range {v25 .. v25}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v14

    .line 373
    .restart local v14    # "domText":Lorg/w3c/dom/Text;
    invoke-interface {v10, v14}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_3

    .line 375
    .end local v14    # "domText":Lorg/w3c/dom/Text;
    .end local v25    # "text":Lorg/jdom/Text;
    :cond_d
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/jdom/Comment;

    move/from16 v27, v0

    if-eqz v27, :cond_e

    .line 376
    move-object/from16 v0, v18

    check-cast v0, Lorg/jdom/Comment;

    move-object v7, v0

    .line 377
    .local v7, "comment":Lorg/jdom/Comment;
    invoke-virtual {v7}, Lorg/jdom/Comment;->getText()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v9

    .line 379
    .local v9, "domComment":Lorg/w3c/dom/Comment;
    invoke-interface {v10, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_3

    .line 381
    .end local v7    # "comment":Lorg/jdom/Comment;
    .end local v9    # "domComment":Lorg/w3c/dom/Comment;
    :cond_e
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/jdom/ProcessingInstruction;

    move/from16 v27, v0

    if-eqz v27, :cond_f

    .line 382
    move-object/from16 v0, v18

    check-cast v0, Lorg/jdom/ProcessingInstruction;

    move-object/from16 v21, v0

    .line 384
    .local v21, "pi":Lorg/jdom/ProcessingInstruction;
    invoke-virtual/range {v21 .. v21}, Lorg/jdom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v21 .. v21}, Lorg/jdom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v13

    .line 387
    .local v13, "domPI":Lorg/w3c/dom/ProcessingInstruction;
    invoke-interface {v10, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_3

    .line 389
    .end local v13    # "domPI":Lorg/w3c/dom/ProcessingInstruction;
    .end local v21    # "pi":Lorg/jdom/ProcessingInstruction;
    :cond_f
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/jdom/EntityRef;

    move/from16 v27, v0

    if-eqz v27, :cond_10

    .line 390
    move-object/from16 v0, v18

    check-cast v0, Lorg/jdom/EntityRef;

    move-object/from16 v16, v0

    .line 391
    .local v16, "entity":Lorg/jdom/EntityRef;
    invoke-virtual/range {v16 .. v16}, Lorg/jdom/EntityRef;->getName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;

    move-result-object v12

    .line 393
    .local v12, "domEntity":Lorg/w3c/dom/EntityReference;
    invoke-interface {v10, v12}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_3

    .line 396
    .end local v12    # "domEntity":Lorg/w3c/dom/EntityReference;
    .end local v16    # "entity":Lorg/jdom/EntityRef;
    :cond_10
    new-instance v27, Lorg/jdom/JDOMException;

    new-instance v28, Ljava/lang/StringBuffer;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    const-string v29, "Element contained content with type:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 403
    .end local v18    # "node":Ljava/lang/Object;
    :cond_11
    :goto_4
    invoke-virtual/range {p3 .. p3}, Lorg/jdom/output/NamespaceStack;->size()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v23

    if-le v0, v1, :cond_12

    .line 404
    invoke-virtual/range {p3 .. p3}, Lorg/jdom/output/NamespaceStack;->pop()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 407
    :cond_12
    return-object v10
.end method


# virtual methods
.method public getForceNamespaceAware()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lorg/jdom/output/DOMOutputter;->forceNamespaceAware:Z

    return v0
.end method

.method public output(Lorg/jdom/Document;)Lorg/w3c/dom/Document;
    .locals 17
    .param p1, "document"    # Lorg/jdom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v10, Lorg/jdom/output/NamespaceStack;

    invoke-direct {v10}, Lorg/jdom/output/NamespaceStack;-><init>()V

    .line 143
    .local v10, "namespaces":Lorg/jdom/output/NamespaceStack;
    const/4 v3, 0x0

    .line 146
    .local v3, "domDoc":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/jdom/Document;->getDocType()Lorg/jdom/DocType;

    move-result-object v6

    .line 147
    .local v6, "dt":Lorg/jdom/DocType;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/jdom/output/DOMOutputter;->createDOMDocument(Lorg/jdom/DocType;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 150
    invoke-virtual/range {p1 .. p1}, Lorg/jdom/Document;->getContent()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 151
    .local v9, "itr":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 152
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 154
    .local v11, "node":Ljava/lang/Object;
    instance-of v14, v11, Lorg/jdom/Element;

    if-eqz v14, :cond_2

    .line 155
    move-object v0, v11

    check-cast v0, Lorg/jdom/Element;

    move-object v8, v0

    .line 156
    .local v8, "element":Lorg/jdom/Element;
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3, v10}, Lorg/jdom/output/DOMOutputter;->output(Lorg/jdom/Element;Lorg/w3c/dom/Document;Lorg/jdom/output/NamespaceStack;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 159
    .local v4, "domElement":Lorg/w3c/dom/Element;
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v13

    .line 160
    .local v13, "root":Lorg/w3c/dom/Element;
    if-nez v13, :cond_1

    .line 162
    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    .end local v4    # "domElement":Lorg/w3c/dom/Element;
    .end local v6    # "dt":Lorg/jdom/DocType;
    .end local v8    # "element":Lorg/jdom/Element;
    .end local v9    # "itr":Ljava/util/Iterator;
    .end local v11    # "node":Ljava/lang/Object;
    .end local v13    # "root":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v7

    .line 195
    .local v7, "e":Ljava/lang/Throwable;
    new-instance v14, Lorg/jdom/JDOMException;

    const-string v15, "Exception outputting Document"

    invoke-direct {v14, v15, v7}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 167
    .end local v7    # "e":Ljava/lang/Throwable;
    .restart local v4    # "domElement":Lorg/w3c/dom/Element;
    .restart local v6    # "dt":Lorg/jdom/DocType;
    .restart local v8    # "element":Lorg/jdom/Element;
    .restart local v9    # "itr":Ljava/util/Iterator;
    .restart local v11    # "node":Ljava/lang/Object;
    .restart local v13    # "root":Lorg/w3c/dom/Element;
    :cond_1
    :try_start_1
    invoke-interface {v3, v4, v13}, Lorg/w3c/dom/Document;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 170
    .end local v4    # "domElement":Lorg/w3c/dom/Element;
    .end local v8    # "element":Lorg/jdom/Element;
    .end local v13    # "root":Lorg/w3c/dom/Element;
    :cond_2
    instance-of v14, v11, Lorg/jdom/Comment;

    if-eqz v14, :cond_3

    .line 171
    move-object v0, v11

    check-cast v0, Lorg/jdom/Comment;

    move-object v1, v0

    .line 172
    .local v1, "comment":Lorg/jdom/Comment;
    invoke-virtual {v1}, Lorg/jdom/Comment;->getText()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v14}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v2

    .line 174
    .local v2, "domComment":Lorg/w3c/dom/Comment;
    invoke-interface {v3, v2}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 176
    .end local v1    # "comment":Lorg/jdom/Comment;
    .end local v2    # "domComment":Lorg/w3c/dom/Comment;
    :cond_3
    instance-of v14, v11, Lorg/jdom/ProcessingInstruction;

    if-eqz v14, :cond_4

    .line 177
    move-object v0, v11

    check-cast v0, Lorg/jdom/ProcessingInstruction;

    move-object v12, v0

    .line 179
    .local v12, "pi":Lorg/jdom/ProcessingInstruction;
    invoke-virtual {v12}, Lorg/jdom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12}, Lorg/jdom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v14, v15}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v5

    .line 182
    .local v5, "domPI":Lorg/w3c/dom/ProcessingInstruction;
    invoke-interface {v3, v5}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 184
    .end local v5    # "domPI":Lorg/w3c/dom/ProcessingInstruction;
    .end local v12    # "pi":Lorg/jdom/ProcessingInstruction;
    :cond_4
    instance-of v14, v11, Lorg/jdom/DocType;

    if-nez v14, :cond_0

    .line 188
    new-instance v14, Lorg/jdom/JDOMException;

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "Document contained top-level content with type:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 198
    .end local v11    # "node":Ljava/lang/Object;
    :cond_5
    return-object v3
.end method

.method public setForceNamespaceAware(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lorg/jdom/output/DOMOutputter;->forceNamespaceAware:Z

    .line 120
    return-void
.end method
