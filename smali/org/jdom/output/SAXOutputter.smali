.class public Lorg/jdom/output/SAXOutputter;
.super Ljava/lang/Object;
.source "SAXOutputter.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: SAXOutputter.java,v $ $Revision: 1.40 $ $Date: 2007/11/10 05:29:01 $ $Name: jdom_1_1 $"

.field private static final DECL_HANDLER_ALT_PROPERTY:Ljava/lang/String; = "http://xml.org/sax/handlers/DeclHandler"

.field private static final DECL_HANDLER_SAX_PROPERTY:Ljava/lang/String; = "http://xml.org/sax/properties/declaration-handler"

.field private static final LEXICAL_HANDLER_ALT_PROPERTY:Ljava/lang/String; = "http://xml.org/sax/handlers/LexicalHandler"

.field private static final LEXICAL_HANDLER_SAX_PROPERTY:Ljava/lang/String; = "http://xml.org/sax/properties/lexical-handler"

.field private static final NAMESPACES_SAX_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final NS_PREFIXES_SAX_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field private static final VALIDATION_SAX_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field private static final attrTypeToNameMap:[Ljava/lang/String;


# instance fields
.field private contentHandler:Lorg/xml/sax/ContentHandler;

.field private declHandler:Lorg/xml/sax/ext/DeclHandler;

.field private declareNamespaces:Z

.field private dtdHandler:Lorg/xml/sax/DTDHandler;

.field private entityResolver:Lorg/xml/sax/EntityResolver;

.field private errorHandler:Lorg/xml/sax/ErrorHandler;

.field private lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private locator:Lorg/jdom/output/JDOMLocator;

.field private reportDtdEvents:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 132
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CDATA"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CDATA"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ID"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "IDREF"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "IDREFS"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ENTITY"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ENTITIES"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "NMTOKEN"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "NMTOKENS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "NOTATION"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "NMTOKEN"

    aput-object v2, v0, v1

    sput-object v0, Lorg/jdom/output/SAXOutputter;->attrTypeToNameMap:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom/output/SAXOutputter;->declareNamespaces:Z

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom/output/SAXOutputter;->reportDtdEvents:Z

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    .line 191
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 6
    .param p1, "contentHandler"    # Lorg/xml/sax/ContentHandler;

    .prologue
    const/4 v2, 0x0

    .line 201
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/jdom/output/SAXOutputter;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ErrorHandler;Lorg/xml/sax/DTDHandler;Lorg/xml/sax/EntityResolver;Lorg/xml/sax/ext/LexicalHandler;)V

    .line 202
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ErrorHandler;Lorg/xml/sax/DTDHandler;Lorg/xml/sax/EntityResolver;)V
    .locals 6
    .param p1, "contentHandler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "errorHandler"    # Lorg/xml/sax/ErrorHandler;
    .param p3, "dtdHandler"    # Lorg/xml/sax/DTDHandler;
    .param p4, "entityResolver"    # Lorg/xml/sax/EntityResolver;

    .prologue
    .line 220
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/jdom/output/SAXOutputter;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ErrorHandler;Lorg/xml/sax/DTDHandler;Lorg/xml/sax/EntityResolver;Lorg/xml/sax/ext/LexicalHandler;)V

    .line 221
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ErrorHandler;Lorg/xml/sax/DTDHandler;Lorg/xml/sax/EntityResolver;Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 1
    .param p1, "contentHandler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "errorHandler"    # Lorg/xml/sax/ErrorHandler;
    .param p3, "dtdHandler"    # Lorg/xml/sax/DTDHandler;
    .param p4, "entityResolver"    # Lorg/xml/sax/EntityResolver;
    .param p5, "lexicalHandler"    # Lorg/xml/sax/ext/LexicalHandler;

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom/output/SAXOutputter;->declareNamespaces:Z

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom/output/SAXOutputter;->reportDtdEvents:Z

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    .line 241
    iput-object p1, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 242
    iput-object p2, p0, Lorg/jdom/output/SAXOutputter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 243
    iput-object p3, p0, Lorg/jdom/output/SAXOutputter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 244
    iput-object p4, p0, Lorg/jdom/output/SAXOutputter;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 245
    iput-object p5, p0, Lorg/jdom/output/SAXOutputter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 246
    return-void
.end method

.method private addNsAttribute(Lorg/xml/sax/helpers/AttributesImpl;Lorg/jdom/Namespace;)Lorg/xml/sax/helpers/AttributesImpl;
    .locals 7
    .param p1, "atts"    # Lorg/xml/sax/helpers/AttributesImpl;
    .param p2, "ns"    # Lorg/jdom/Namespace;

    .prologue
    .line 1218
    iget-boolean v0, p0, Lorg/jdom/output/SAXOutputter;->declareNamespaces:Z

    if-eqz v0, :cond_1

    .line 1219
    if-nez p1, :cond_0

    .line 1220
    new-instance p1, Lorg/xml/sax/helpers/AttributesImpl;

    .end local p1    # "atts":Lorg/xml/sax/helpers/AttributesImpl;
    invoke-direct {p1}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 1223
    .restart local p1    # "atts":Lorg/xml/sax/helpers/AttributesImpl;
    :cond_0
    invoke-virtual {p2}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v6

    .line 1224
    .local v6, "prefix":Ljava/lang/String;
    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1225
    const-string v1, ""

    const-string v2, ""

    const-string v3, "xmlns"

    const-string v4, "CDATA"

    invoke-virtual {p2}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    .end local v6    # "prefix":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p1

    .line 1232
    .restart local v6    # "prefix":Ljava/lang/String;
    :cond_2
    const-string v1, ""

    const-string v2, ""

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "xmlns:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CDATA"

    invoke-virtual {p2}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private cdata(Ljava/lang/String;)V
    .locals 3
    .param p1, "cdataText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 1135
    :try_start_0
    iget-object v1, p0, Lorg/jdom/output/SAXOutputter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_0

    .line 1136
    iget-object v1, p0, Lorg/jdom/output/SAXOutputter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v1}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 1137
    invoke-direct {p0, p1}, Lorg/jdom/output/SAXOutputter;->characters(Ljava/lang/String;)V

    .line 1138
    iget-object v1, p0, Lorg/jdom/output/SAXOutputter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v1}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    .line 1147
    :goto_0
    return-void

    .line 1141
    :cond_0
    invoke-direct {p0, p1}, Lorg/jdom/output/SAXOutputter;->characters(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1144
    :catch_0
    move-exception v0

    .line 1145
    .local v0, "se":Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/jdom/JDOMException;

    const-string v2, "Exception in CDATA"

    invoke-direct {v1, v2, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private characters(Ljava/lang/String;)V
    .locals 5
    .param p1, "elementText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 1157
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1159
    .local v0, "c":[C
    :try_start_0
    iget-object v2, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-interface {v2, v0, v3, v4}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1164
    return-void

    .line 1161
    :catch_0
    move-exception v1

    .line 1162
    .local v1, "se":Lorg/xml/sax/SAXException;
    new-instance v2, Lorg/jdom/JDOMException;

    const-string v3, "Exception in characters"

    invoke-direct {v2, v3, v1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private comment(Ljava/lang/String;)V
    .locals 5
    .param p1, "commentText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 1174
    iget-object v2, p0, Lorg/jdom/output/SAXOutputter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v2, :cond_0

    .line 1175
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1177
    .local v0, "c":[C
    :try_start_0
    iget-object v2, p0, Lorg/jdom/output/SAXOutputter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-interface {v2, v0, v3, v4}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1182
    .end local v0    # "c":[C
    :cond_0
    return-void

    .line 1178
    .restart local v0    # "c":[C
    :catch_0
    move-exception v1

    .line 1179
    .local v1, "se":Lorg/xml/sax/SAXException;
    new-instance v2, Lorg/jdom/JDOMException;

    const-string v3, "Exception in comment"

    invoke-direct {v2, v3, v1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private createDTDParser()Lorg/xml/sax/XMLReader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 1363
    const/4 v1, 0x0

    .line 1368
    .local v1, "parser":Lorg/xml/sax/XMLReader;
    :try_start_0
    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->createParser()Lorg/xml/sax/XMLReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1375
    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getDTDHandler()Lorg/xml/sax/DTDHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1376
    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getDTDHandler()Lorg/xml/sax/DTDHandler;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 1378
    :cond_0
    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1379
    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 1381
    :cond_1
    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1383
    :try_start_1
    const-string v2, "http://xml.org/sax/properties/lexical-handler"

    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1395
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getDeclHandler()Lorg/xml/sax/ext/DeclHandler;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1397
    :try_start_2
    const-string v2, "http://xml.org/sax/properties/declaration-handler"

    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getDeclHandler()Lorg/xml/sax/ext/DeclHandler;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1411
    :cond_3
    :goto_1
    new-instance v2, Lorg/xml/sax/helpers/DefaultHandler;

    invoke-direct {v2}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 1413
    return-object v1

    .line 1370
    :catch_0
    move-exception v0

    .line 1371
    .local v0, "ex1":Ljava/lang/Exception;
    new-instance v2, Lorg/jdom/JDOMException;

    const-string v3, "Error in SAX parser allocation"

    invoke-direct {v2, v3, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1386
    .end local v0    # "ex1":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1388
    .local v0, "ex1":Lorg/xml/sax/SAXException;
    :try_start_3
    const-string v2, "http://xml.org/sax/handlers/LexicalHandler"

    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1390
    :catch_2
    move-exception v2

    goto :goto_0

    .line 1400
    .end local v0    # "ex1":Lorg/xml/sax/SAXException;
    :catch_3
    move-exception v0

    .line 1402
    .restart local v0    # "ex1":Lorg/xml/sax/SAXException;
    :try_start_4
    const-string v2, "http://xml.org/sax/handlers/DeclHandler"

    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getDeclHandler()Lorg/xml/sax/ext/DeclHandler;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    .line 1404
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method private documentLocator(Lorg/jdom/Document;)V
    .locals 5
    .param p1, "document"    # Lorg/jdom/Document;

    .prologue
    const/4 v4, -0x1

    .line 801
    new-instance v3, Lorg/jdom/output/JDOMLocator;

    invoke-direct {v3}, Lorg/jdom/output/JDOMLocator;-><init>()V

    iput-object v3, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    .line 802
    const/4 v1, 0x0

    .line 803
    .local v1, "publicID":Ljava/lang/String;
    const/4 v2, 0x0

    .line 805
    .local v2, "systemID":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 806
    invoke-virtual {p1}, Lorg/jdom/Document;->getDocType()Lorg/jdom/DocType;

    move-result-object v0

    .line 807
    .local v0, "docType":Lorg/jdom/DocType;
    if-eqz v0, :cond_0

    .line 808
    invoke-virtual {v0}, Lorg/jdom/DocType;->getPublicID()Ljava/lang/String;

    move-result-object v1

    .line 809
    invoke-virtual {v0}, Lorg/jdom/DocType;->getSystemID()Ljava/lang/String;

    move-result-object v2

    .line 812
    .end local v0    # "docType":Lorg/jdom/DocType;
    :cond_0
    iget-object v3, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    invoke-virtual {v3, v1}, Lorg/jdom/output/JDOMLocator;->setPublicId(Ljava/lang/String;)V

    .line 813
    iget-object v3, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    invoke-virtual {v3, v2}, Lorg/jdom/output/JDOMLocator;->setSystemId(Ljava/lang/String;)V

    .line 814
    iget-object v3, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    invoke-virtual {v3, v4}, Lorg/jdom/output/JDOMLocator;->setLineNumber(I)V

    .line 815
    iget-object v3, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    invoke-virtual {v3, v4}, Lorg/jdom/output/JDOMLocator;->setColumnNumber(I)V

    .line 817
    iget-object v3, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v4, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    invoke-interface {v3, v4}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 818
    return-void
.end method

.method private dtdEvents(Lorg/jdom/Document;)V
    .locals 6
    .param p1, "document"    # Lorg/jdom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 760
    invoke-virtual {p1}, Lorg/jdom/Document;->getDocType()Lorg/jdom/DocType;

    move-result-object v0

    .line 763
    .local v0, "docType":Lorg/jdom/DocType;
    if-eqz v0, :cond_1

    iget-object v3, p0, Lorg/jdom/output/SAXOutputter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/jdom/output/SAXOutputter;->declHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v3, :cond_1

    .line 767
    :cond_0
    new-instance v3, Lorg/jdom/output/XMLOutputter;

    invoke-direct {v3}, Lorg/jdom/output/XMLOutputter;-><init>()V

    invoke-virtual {v3, v0}, Lorg/jdom/output/XMLOutputter;->outputString(Lorg/jdom/DocType;)Ljava/lang/String;

    move-result-object v1

    .line 771
    .local v1, "dtdDoc":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lorg/jdom/output/SAXOutputter;->createDTDParser()Lorg/xml/sax/XMLReader;

    move-result-object v3

    new-instance v4, Lorg/xml/sax/InputSource;

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v3, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 787
    .end local v1    # "dtdDoc":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 780
    .restart local v1    # "dtdDoc":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 781
    .local v2, "e":Lorg/xml/sax/SAXException;
    new-instance v3, Lorg/jdom/JDOMException;

    const-string v4, "DTD parsing error"

    invoke-direct {v3, v4, v2}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 783
    .end local v2    # "e":Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v2

    .line 784
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/jdom/JDOMException;

    const-string v4, "DTD parsing error"

    invoke-direct {v3, v4, v2}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 777
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method private element(Lorg/jdom/Element;Lorg/jdom/output/NamespaceStack;)V
    .locals 3
    .param p1, "element"    # Lorg/jdom/Element;
    .param p2, "namespaces"    # Lorg/jdom/output/NamespaceStack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 888
    invoke-virtual {p2}, Lorg/jdom/output/NamespaceStack;->size()I

    move-result v1

    .line 891
    .local v1, "previouslyDeclaredNamespaces":I
    invoke-direct {p0, p1, p2}, Lorg/jdom/output/SAXOutputter;->startPrefixMapping(Lorg/jdom/Element;Lorg/jdom/output/NamespaceStack;)Lorg/xml/sax/Attributes;

    move-result-object v0

    .line 894
    .local v0, "nsAtts":Lorg/xml/sax/Attributes;
    invoke-direct {p0, p1, v0}, Lorg/jdom/output/SAXOutputter;->startElement(Lorg/jdom/Element;Lorg/xml/sax/Attributes;)V

    .line 897
    invoke-virtual {p1}, Lorg/jdom/Element;->getContent()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/jdom/output/SAXOutputter;->elementContent(Ljava/util/List;Lorg/jdom/output/NamespaceStack;)V

    .line 900
    iget-object v2, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    if-eqz v2, :cond_0

    .line 901
    iget-object v2, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    invoke-virtual {v2, p1}, Lorg/jdom/output/JDOMLocator;->setNode(Ljava/lang/Object;)V

    .line 905
    :cond_0
    invoke-direct {p0, p1}, Lorg/jdom/output/SAXOutputter;->endElement(Lorg/jdom/Element;)V

    .line 908
    invoke-direct {p0, p2, v1}, Lorg/jdom/output/SAXOutputter;->endPrefixMapping(Lorg/jdom/output/NamespaceStack;I)V

    .line 909
    return-void
.end method

.method private elementContent(Ljava/util/List;Lorg/jdom/output/NamespaceStack;)V
    .locals 5
    .param p1, "content"    # Ljava/util/List;
    .param p2, "namespaces"    # Lorg/jdom/output/NamespaceStack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 1065
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1066
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1068
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lorg/jdom/Content;

    if-eqz v2, :cond_0

    .line 1069
    check-cast v1, Lorg/jdom/Content;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-direct {p0, v1, p2}, Lorg/jdom/output/SAXOutputter;->elementContent(Lorg/jdom/Content;Lorg/jdom/output/NamespaceStack;)V

    goto :goto_0

    .line 1075
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_0
    new-instance v2, Lorg/jdom/JDOMException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid element content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/jdom/output/SAXOutputter;->handleError(Lorg/jdom/JDOMException;)V

    goto :goto_0

    .line 1079
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private elementContent(Lorg/jdom/Content;Lorg/jdom/output/NamespaceStack;)V
    .locals 3
    .param p1, "node"    # Lorg/jdom/Content;
    .param p2, "namespaces"    # Lorg/jdom/output/NamespaceStack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 1092
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    invoke-virtual {v0, p1}, Lorg/jdom/output/JDOMLocator;->setNode(Ljava/lang/Object;)V

    .line 1096
    :cond_0
    instance-of v0, p1, Lorg/jdom/Element;

    if-eqz v0, :cond_1

    .line 1097
    check-cast p1, Lorg/jdom/Element;

    .end local p1    # "node":Lorg/jdom/Content;
    invoke-direct {p0, p1, p2}, Lorg/jdom/output/SAXOutputter;->element(Lorg/jdom/Element;Lorg/jdom/output/NamespaceStack;)V

    .line 1124
    :goto_0
    return-void

    .line 1099
    .restart local p1    # "node":Lorg/jdom/Content;
    :cond_1
    instance-of v0, p1, Lorg/jdom/CDATA;

    if-eqz v0, :cond_2

    .line 1100
    check-cast p1, Lorg/jdom/CDATA;

    .end local p1    # "node":Lorg/jdom/Content;
    invoke-virtual {p1}, Lorg/jdom/CDATA;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jdom/output/SAXOutputter;->cdata(Ljava/lang/String;)V

    goto :goto_0

    .line 1102
    .restart local p1    # "node":Lorg/jdom/Content;
    :cond_2
    instance-of v0, p1, Lorg/jdom/Text;

    if-eqz v0, :cond_3

    .line 1104
    check-cast p1, Lorg/jdom/Text;

    .end local p1    # "node":Lorg/jdom/Content;
    invoke-virtual {p1}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jdom/output/SAXOutputter;->characters(Ljava/lang/String;)V

    goto :goto_0

    .line 1106
    .restart local p1    # "node":Lorg/jdom/Content;
    :cond_3
    instance-of v0, p1, Lorg/jdom/ProcessingInstruction;

    if-eqz v0, :cond_4

    .line 1108
    check-cast p1, Lorg/jdom/ProcessingInstruction;

    .end local p1    # "node":Lorg/jdom/Content;
    invoke-direct {p0, p1}, Lorg/jdom/output/SAXOutputter;->processingInstruction(Lorg/jdom/ProcessingInstruction;)V

    goto :goto_0

    .line 1110
    .restart local p1    # "node":Lorg/jdom/Content;
    :cond_4
    instance-of v0, p1, Lorg/jdom/Comment;

    if-eqz v0, :cond_5

    .line 1112
    check-cast p1, Lorg/jdom/Comment;

    .end local p1    # "node":Lorg/jdom/Content;
    invoke-virtual {p1}, Lorg/jdom/Comment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jdom/output/SAXOutputter;->comment(Ljava/lang/String;)V

    goto :goto_0

    .line 1114
    .restart local p1    # "node":Lorg/jdom/Content;
    :cond_5
    instance-of v0, p1, Lorg/jdom/EntityRef;

    if-eqz v0, :cond_6

    .line 1116
    check-cast p1, Lorg/jdom/EntityRef;

    .end local p1    # "node":Lorg/jdom/Content;
    invoke-direct {p0, p1}, Lorg/jdom/output/SAXOutputter;->entityRef(Lorg/jdom/EntityRef;)V

    goto :goto_0

    .line 1122
    .restart local p1    # "node":Lorg/jdom/Content;
    :cond_6
    new-instance v0, Lorg/jdom/JDOMException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid element content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/jdom/output/SAXOutputter;->handleError(Lorg/jdom/JDOMException;)V

    goto :goto_0
.end method

.method private endDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 843
    :try_start_0
    iget-object v1, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 846
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    return-void

    .line 848
    :catch_0
    move-exception v0

    .line 849
    .local v0, "se":Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/jdom/JDOMException;

    const-string v2, "Exception in endDocument"

    invoke-direct {v1, v2, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private endElement(Lorg/jdom/Element;)V
    .locals 6
    .param p1, "element"    # Lorg/jdom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 1043
    invoke-virtual {p1}, Lorg/jdom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 1044
    .local v1, "namespaceURI":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jdom/Element;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1045
    .local v0, "localName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jdom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    .line 1048
    .local v2, "rawName":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v4, v1, v0, v2}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1053
    return-void

    .line 1050
    :catch_0
    move-exception v3

    .line 1051
    .local v3, "se":Lorg/xml/sax/SAXException;
    new-instance v4, Lorg/jdom/JDOMException;

    const-string v5, "Exception in endElement"

    invoke-direct {v4, v5, v3}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private endPrefixMapping(Lorg/jdom/output/NamespaceStack;I)V
    .locals 4
    .param p1, "namespaces"    # Lorg/jdom/output/NamespaceStack;
    .param p2, "previouslyDeclaredNamespaces"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 984
    :goto_0
    invoke-virtual {p1}, Lorg/jdom/output/NamespaceStack;->size()I

    move-result v2

    if-le v2, p2, :cond_0

    .line 985
    invoke-virtual {p1}, Lorg/jdom/output/NamespaceStack;->pop()Ljava/lang/String;

    move-result-object v0

    .line 987
    .local v0, "prefix":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v2, v0}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 989
    :catch_0
    move-exception v1

    .line 990
    .local v1, "se":Lorg/xml/sax/SAXException;
    new-instance v2, Lorg/jdom/JDOMException;

    const-string v3, "Exception in endPrefixMapping"

    invoke-direct {v2, v3, v1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 993
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "se":Lorg/xml/sax/SAXException;
    :cond_0
    return-void
.end method

.method private entityRef(Lorg/jdom/EntityRef;)V
    .locals 3
    .param p1, "entity"    # Lorg/jdom/EntityRef;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 1193
    if-eqz p1, :cond_0

    .line 1197
    :try_start_0
    iget-object v1, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p1}, Lorg/jdom/EntityRef;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1203
    :cond_0
    return-void

    .line 1199
    :catch_0
    move-exception v0

    .line 1200
    .local v0, "se":Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/jdom/JDOMException;

    const-string v2, "Exception in entityRef"

    invoke-direct {v1, v2, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getAttributeTypeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1256
    if-ltz p0, :cond_0

    sget-object v0, Lorg/jdom/output/SAXOutputter;->attrTypeToNameMap:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    .line 1257
    :cond_0
    const/4 p0, 0x0

    .line 1259
    :cond_1
    sget-object v0, Lorg/jdom/output/SAXOutputter;->attrTypeToNameMap:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method private handleError(Lorg/jdom/JDOMException;)V
    .locals 5
    .param p1, "exception"    # Lorg/jdom/JDOMException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 1279
    iget-object v1, p0, Lorg/jdom/output/SAXOutputter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v1, :cond_1

    .line 1281
    :try_start_0
    iget-object v1, p0, Lorg/jdom/output/SAXOutputter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    new-instance v2, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p1}, Lorg/jdom/JDOMException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1296
    return-void

    .line 1284
    :catch_0
    move-exception v0

    .line 1285
    .local v0, "se":Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v1

    instance-of v1, v1, Lorg/jdom/JDOMException;

    if-eqz v1, :cond_0

    .line 1286
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Lorg/jdom/JDOMException;

    check-cast v1, Lorg/jdom/JDOMException;

    throw v1

    .line 1289
    :cond_0
    new-instance v1, Lorg/jdom/JDOMException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1294
    .end local v0    # "se":Lorg/xml/sax/SAXException;
    :cond_1
    throw p1
.end method

.method private processingInstruction(Lorg/jdom/ProcessingInstruction;)V
    .locals 5
    .param p1, "pi"    # Lorg/jdom/ProcessingInstruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 863
    if-eqz p1, :cond_0

    .line 864
    invoke-virtual {p1}, Lorg/jdom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v2

    .line 865
    .local v2, "target":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jdom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v0

    .line 867
    .local v0, "data":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v3, v2, v0}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 874
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "target":Ljava/lang/String;
    :cond_0
    return-void

    .line 869
    .restart local v0    # "data":Ljava/lang/String;
    .restart local v2    # "target":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 870
    .local v1, "se":Lorg/xml/sax/SAXException;
    new-instance v3, Lorg/jdom/JDOMException;

    const-string v4, "Exception in processingInstruction"

    invoke-direct {v3, v4, v1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private startDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 828
    :try_start_0
    iget-object v1, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->startDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    return-void

    .line 830
    :catch_0
    move-exception v0

    .line 831
    .local v0, "se":Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/jdom/JDOMException;

    const-string v2, "Exception in startDocument"

    invoke-direct {v1, v2, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private startElement(Lorg/jdom/Element;Lorg/xml/sax/Attributes;)V
    .locals 13
    .param p1, "element"    # Lorg/jdom/Element;
    .param p2, "nsAtts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 1007
    invoke-virtual {p1}, Lorg/jdom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v10

    .line 1008
    .local v10, "namespaceURI":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jdom/Element;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1009
    .local v9, "localName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jdom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v11

    .line 1012
    .local v11, "rawName":Ljava/lang/String;
    if-eqz p2, :cond_0

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0, p2}, Lorg/xml/sax/helpers/AttributesImpl;-><init>(Lorg/xml/sax/Attributes;)V

    .line 1015
    .local v0, "atts":Lorg/xml/sax/helpers/AttributesImpl;
    :goto_0
    invoke-virtual {p1}, Lorg/jdom/Element;->getAttributes()Ljava/util/List;

    move-result-object v7

    .line 1016
    .local v7, "attributes":Ljava/util/List;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1017
    .local v8, "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1018
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jdom/Attribute;

    .line 1019
    .local v6, "a":Lorg/jdom/Attribute;
    invoke-virtual {v6}, Lorg/jdom/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lorg/jdom/Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lorg/jdom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lorg/jdom/Attribute;->getAttributeType()I

    move-result v4

    invoke-static {v4}, Lorg/jdom/output/SAXOutputter;->getAttributeTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lorg/jdom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1012
    .end local v0    # "atts":Lorg/xml/sax/helpers/AttributesImpl;
    .end local v6    # "a":Lorg/jdom/Attribute;
    .end local v7    # "attributes":Ljava/util/List;
    .end local v8    # "i":Ljava/util/Iterator;
    :cond_0
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    goto :goto_0

    .line 1027
    .restart local v0    # "atts":Lorg/xml/sax/helpers/AttributesImpl;
    .restart local v7    # "attributes":Ljava/util/List;
    .restart local v8    # "i":Ljava/util/Iterator;
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, v10, v9, v11, v0}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1032
    return-void

    .line 1029
    :catch_0
    move-exception v12

    .line 1030
    .local v12, "se":Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/jdom/JDOMException;

    const-string v2, "Exception in startElement"

    invoke-direct {v1, v2, v12}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private startPrefixMapping(Lorg/jdom/Element;Lorg/jdom/output/NamespaceStack;)Lorg/xml/sax/Attributes;
    .locals 9
    .param p1, "element"    # Lorg/jdom/Element;
    .param p2, "namespaces"    # Lorg/jdom/output/NamespaceStack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 927
    const/4 v3, 0x0

    .line 929
    .local v3, "nsAtts":Lorg/xml/sax/helpers/AttributesImpl;
    invoke-virtual {p1}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v2

    .line 930
    .local v2, "ns":Lorg/jdom/Namespace;
    sget-object v7, Lorg/jdom/Namespace;->XML_NAMESPACE:Lorg/jdom/Namespace;

    if-eq v2, v7, :cond_0

    .line 931
    invoke-virtual {v2}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v4

    .line 932
    .local v4, "prefix":Ljava/lang/String;
    invoke-virtual {p2, v4}, Lorg/jdom/output/NamespaceStack;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 933
    .local v6, "uri":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 934
    invoke-virtual {p2, v2}, Lorg/jdom/output/NamespaceStack;->push(Lorg/jdom/Namespace;)V

    .line 935
    invoke-direct {p0, v3, v2}, Lorg/jdom/output/SAXOutputter;->addNsAttribute(Lorg/xml/sax/helpers/AttributesImpl;Lorg/jdom/Namespace;)Lorg/xml/sax/helpers/AttributesImpl;

    move-result-object v3

    .line 937
    :try_start_0
    iget-object v7, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v2}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 947
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v6    # "uri":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lorg/jdom/Element;->getAdditionalNamespaces()Ljava/util/List;

    move-result-object v0

    .line 948
    .local v0, "additionalNamespaces":Ljava/util/List;
    if-eqz v0, :cond_2

    .line 949
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 950
    .local v1, "itr":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 951
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ns":Lorg/jdom/Namespace;
    check-cast v2, Lorg/jdom/Namespace;

    .line 952
    .restart local v2    # "ns":Lorg/jdom/Namespace;
    invoke-virtual {v2}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v4

    .line 953
    .restart local v4    # "prefix":Ljava/lang/String;
    invoke-virtual {p2, v4}, Lorg/jdom/output/NamespaceStack;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 954
    .restart local v6    # "uri":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 955
    invoke-virtual {p2, v2}, Lorg/jdom/output/NamespaceStack;->push(Lorg/jdom/Namespace;)V

    .line 956
    invoke-direct {p0, v3, v2}, Lorg/jdom/output/SAXOutputter;->addNsAttribute(Lorg/xml/sax/helpers/AttributesImpl;Lorg/jdom/Namespace;)Lorg/xml/sax/helpers/AttributesImpl;

    move-result-object v3

    .line 958
    :try_start_1
    iget-object v7, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v2}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 960
    :catch_0
    move-exception v5

    .line 961
    .local v5, "se":Lorg/xml/sax/SAXException;
    new-instance v7, Lorg/jdom/JDOMException;

    const-string v8, "Exception in startPrefixMapping"

    invoke-direct {v7, v8, v5}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 939
    .end local v0    # "additionalNamespaces":Ljava/util/List;
    .end local v1    # "itr":Ljava/util/Iterator;
    .end local v5    # "se":Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v5

    .line 940
    .restart local v5    # "se":Lorg/xml/sax/SAXException;
    new-instance v7, Lorg/jdom/JDOMException;

    const-string v8, "Exception in startPrefixMapping"

    invoke-direct {v7, v8, v5}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 967
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v5    # "se":Lorg/xml/sax/SAXException;
    .end local v6    # "uri":Ljava/lang/String;
    .restart local v0    # "additionalNamespaces":Ljava/util/List;
    :cond_2
    return-object v3
.end method


# virtual methods
.method protected createParser()Lorg/xml/sax/XMLReader;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1308
    const/4 v7, 0x0

    .line 1315
    .local v7, "parser":Lorg/xml/sax/XMLReader;
    :try_start_0
    const-string v9, "javax.xml.parsers.SAXParserFactory"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1319
    .local v2, "factoryClass":Ljava/lang/Class;
    const-string v9, "newInstance"

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1321
    .local v5, "newParserInstance":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1324
    .local v1, "factory":Ljava/lang/Object;
    const-string v9, "newSAXParser"

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 1325
    .local v6, "newSAXParser":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    invoke-virtual {v6, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1328
    .local v4, "jaxpParser":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 1329
    .local v8, "parserClass":Ljava/lang/Class;
    const-string v9, "getXMLReader"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1331
    .local v3, "getXMLReader":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    invoke-virtual {v3, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lorg/xml/sax/XMLReader;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1344
    .end local v1    # "factory":Ljava/lang/Object;
    .end local v2    # "factoryClass":Ljava/lang/Class;
    .end local v3    # "getXMLReader":Ljava/lang/reflect/Method;
    .end local v4    # "jaxpParser":Ljava/lang/Object;
    .end local v5    # "newParserInstance":Ljava/lang/reflect/Method;
    .end local v6    # "newSAXParser":Ljava/lang/reflect/Method;
    .end local v8    # "parserClass":Ljava/lang/Class;
    :goto_0
    if-nez v7, :cond_0

    .line 1345
    const-string v9, "org.apache.xerces.parsers.SAXParser"

    invoke-static {v9}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v7

    .line 1348
    :cond_0
    return-object v7

    .line 1338
    :catch_0
    move-exception v9

    goto :goto_0

    .line 1336
    :catch_1
    move-exception v9

    goto :goto_0

    .line 1334
    :catch_2
    move-exception v9

    goto :goto_0

    .line 1332
    :catch_3
    move-exception v9

    goto :goto_0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    return-object v0
.end method

.method public getDeclHandler()Lorg/xml/sax/ext/DeclHandler;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->declHandler:Lorg/xml/sax/ext/DeclHandler;

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 486
    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget-boolean v0, p0, Lorg/jdom/output/SAXOutputter;->declareNamespaces:Z

    .line 498
    :goto_0
    return v0

    .line 491
    :cond_0
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    const/4 v0, 0x1

    goto :goto_0

    .line 496
    :cond_1
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 498
    iget-boolean v0, p0, Lorg/jdom/output/SAXOutputter;->reportDtdEvents:Z

    goto :goto_0

    .line 502
    :cond_2
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-object v0
.end method

.method public getLocator()Lorg/jdom/output/JDOMLocator;
    .locals 2

    .prologue
    .line 1437
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jdom/output/JDOMLocator;

    iget-object v1, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    invoke-direct {v0, v1}, Lorg/jdom/output/JDOMLocator;-><init>(Lorg/xml/sax/Locator;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 570
    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://xml.org/sax/handlers/LexicalHandler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    :cond_0
    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v0

    .line 577
    :goto_0
    return-object v0

    .line 575
    :cond_1
    const-string v0, "http://xml.org/sax/properties/declaration-handler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "http://xml.org/sax/handlers/DeclHandler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 577
    :cond_2
    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getDeclHandler()Lorg/xml/sax/ext/DeclHandler;

    move-result-object v0

    goto :goto_0

    .line 580
    :cond_3
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReportDTDEvents()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lorg/jdom/output/SAXOutputter;->reportDtdEvents:Z

    return v0
.end method

.method public getReportNamespaceDeclarations()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lorg/jdom/output/SAXOutputter;->declareNamespaces:Z

    return v0
.end method

.method public output(Ljava/util/List;)V
    .locals 1
    .param p1, "nodes"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 655
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jdom/output/SAXOutputter;->documentLocator(Lorg/jdom/Document;)V

    .line 663
    invoke-direct {p0}, Lorg/jdom/output/SAXOutputter;->startDocument()V

    .line 666
    new-instance v0, Lorg/jdom/output/NamespaceStack;

    invoke-direct {v0}, Lorg/jdom/output/NamespaceStack;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/jdom/output/SAXOutputter;->elementContent(Ljava/util/List;Lorg/jdom/output/NamespaceStack;)V

    .line 669
    invoke-direct {p0}, Lorg/jdom/output/SAXOutputter;->endDocument()V

    goto :goto_0
.end method

.method public output(Lorg/jdom/Document;)V
    .locals 4
    .param p1, "document"    # Lorg/jdom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 595
    if-nez p1, :cond_0

    .line 635
    :goto_0
    return-void

    .line 600
    :cond_0
    invoke-direct {p0, p1}, Lorg/jdom/output/SAXOutputter;->documentLocator(Lorg/jdom/Document;)V

    .line 603
    invoke-direct {p0}, Lorg/jdom/output/SAXOutputter;->startDocument()V

    .line 606
    iget-boolean v2, p0, Lorg/jdom/output/SAXOutputter;->reportDtdEvents:Z

    if-eqz v2, :cond_1

    .line 607
    invoke-direct {p0, p1}, Lorg/jdom/output/SAXOutputter;->dtdEvents(Lorg/jdom/Document;)V

    .line 612
    :cond_1
    invoke-virtual {p1}, Lorg/jdom/Document;->getContent()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 613
    .local v0, "i":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 614
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 617
    .local v1, "obj":Ljava/lang/Object;
    iget-object v2, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    invoke-virtual {v2, v1}, Lorg/jdom/output/JDOMLocator;->setNode(Ljava/lang/Object;)V

    .line 619
    instance-of v2, v1, Lorg/jdom/Element;

    if-eqz v2, :cond_3

    .line 621
    invoke-virtual {p1}, Lorg/jdom/Document;->getRootElement()Lorg/jdom/Element;

    move-result-object v2

    new-instance v3, Lorg/jdom/output/NamespaceStack;

    invoke-direct {v3}, Lorg/jdom/output/NamespaceStack;-><init>()V

    invoke-direct {p0, v2, v3}, Lorg/jdom/output/SAXOutputter;->element(Lorg/jdom/Element;Lorg/jdom/output/NamespaceStack;)V

    goto :goto_1

    .line 623
    :cond_3
    instance-of v2, v1, Lorg/jdom/ProcessingInstruction;

    if-eqz v2, :cond_4

    .line 625
    check-cast v1, Lorg/jdom/ProcessingInstruction;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lorg/jdom/output/SAXOutputter;->processingInstruction(Lorg/jdom/ProcessingInstruction;)V

    goto :goto_1

    .line 627
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_4
    instance-of v2, v1, Lorg/jdom/Comment;

    if-eqz v2, :cond_2

    .line 629
    check-cast v1, Lorg/jdom/Comment;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Lorg/jdom/Comment;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jdom/output/SAXOutputter;->comment(Ljava/lang/String;)V

    goto :goto_1

    .line 634
    :cond_5
    invoke-direct {p0}, Lorg/jdom/output/SAXOutputter;->endDocument()V

    goto :goto_0
.end method

.method public output(Lorg/jdom/Element;)V
    .locals 1
    .param p1, "node"    # Lorg/jdom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 681
    if-nez p1, :cond_0

    .line 696
    :goto_0
    return-void

    .line 686
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jdom/output/SAXOutputter;->documentLocator(Lorg/jdom/Document;)V

    .line 689
    invoke-direct {p0}, Lorg/jdom/output/SAXOutputter;->startDocument()V

    .line 692
    new-instance v0, Lorg/jdom/output/NamespaceStack;

    invoke-direct {v0}, Lorg/jdom/output/NamespaceStack;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/jdom/output/SAXOutputter;->elementContent(Lorg/jdom/Content;Lorg/jdom/output/NamespaceStack;)V

    .line 695
    invoke-direct {p0}, Lorg/jdom/output/SAXOutputter;->endDocument()V

    goto :goto_0
.end method

.method public outputFragment(Ljava/util/List;)V
    .locals 1
    .param p1, "nodes"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 717
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    new-instance v0, Lorg/jdom/output/NamespaceStack;

    invoke-direct {v0}, Lorg/jdom/output/NamespaceStack;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/jdom/output/SAXOutputter;->elementContent(Ljava/util/List;Lorg/jdom/output/NamespaceStack;)V

    goto :goto_0
.end method

.method public outputFragment(Lorg/jdom/Content;)V
    .locals 1
    .param p1, "node"    # Lorg/jdom/Content;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 744
    if-nez p1, :cond_0

    .line 750
    :goto_0
    return-void

    .line 749
    :cond_0
    new-instance v0, Lorg/jdom/output/NamespaceStack;

    invoke-direct {v0}, Lorg/jdom/output/NamespaceStack;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/jdom/output/SAXOutputter;->elementContent(Lorg/jdom/Content;Lorg/jdom/output/NamespaceStack;)V

    goto :goto_0
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "contentHandler"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 255
    iput-object p1, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 256
    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0
    .param p1, "dtdHandler"    # Lorg/xml/sax/DTDHandler;

    .prologue
    .line 293
    iput-object p1, p0, Lorg/jdom/output/SAXOutputter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 294
    return-void
.end method

.method public setDeclHandler(Lorg/xml/sax/ext/DeclHandler;)V
    .locals 0
    .param p1, "declHandler"    # Lorg/xml/sax/ext/DeclHandler;

    .prologue
    .line 350
    iput-object p1, p0, Lorg/jdom/output/SAXOutputter;->declHandler:Lorg/xml/sax/ext/DeclHandler;

    .line 351
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0
    .param p1, "entityResolver"    # Lorg/xml/sax/EntityResolver;

    .prologue
    .line 312
    iput-object p1, p0, Lorg/jdom/output/SAXOutputter;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 313
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0
    .param p1, "errorHandler"    # Lorg/xml/sax/ErrorHandler;

    .prologue
    .line 274
    iput-object p1, p0, Lorg/jdom/output/SAXOutputter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 275
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 446
    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    invoke-virtual {p0, p2}, Lorg/jdom/output/SAXOutputter;->setReportNamespaceDeclarations(Z)V

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 452
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 454
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_2
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 461
    invoke-virtual {p0, p2}, Lorg/jdom/output/SAXOutputter;->setReportDTDEvents(Z)V

    goto :goto_0

    .line 465
    :cond_3
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 0
    .param p1, "lexicalHandler"    # Lorg/xml/sax/ext/LexicalHandler;

    .prologue
    .line 331
    iput-object p1, p0, Lorg/jdom/output/SAXOutputter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 332
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 541
    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://xml.org/sax/handlers/LexicalHandler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    :cond_0
    check-cast p2, Lorg/xml/sax/ext/LexicalHandler;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lorg/jdom/output/SAXOutputter;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    .line 554
    :goto_0
    return-void

    .line 546
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string v0, "http://xml.org/sax/properties/declaration-handler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "http://xml.org/sax/handlers/DeclHandler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 548
    :cond_2
    check-cast p2, Lorg/xml/sax/ext/DeclHandler;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lorg/jdom/output/SAXOutputter;->setDeclHandler(Lorg/xml/sax/ext/DeclHandler;)V

    goto :goto_0

    .line 551
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReportDTDEvents(Z)V
    .locals 0
    .param p1, "reportDtdEvents"    # Z

    .prologue
    .line 403
    iput-boolean p1, p0, Lorg/jdom/output/SAXOutputter;->reportDtdEvents:Z

    .line 404
    return-void
.end method

.method public setReportNamespaceDeclarations(Z)V
    .locals 0
    .param p1, "declareNamespaces"    # Z

    .prologue
    .line 383
    iput-boolean p1, p0, Lorg/jdom/output/SAXOutputter;->declareNamespaces:Z

    .line 384
    return-void
.end method
