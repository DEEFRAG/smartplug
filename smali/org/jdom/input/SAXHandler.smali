.class public Lorg/jdom/input/SAXHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SAXHandler.java"

# interfaces
.implements Lorg/xml/sax/DTDHandler;
.implements Lorg/xml/sax/ext/DeclHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: SAXHandler.java,v $ $Revision: 1.73 $ $Date: 2007/11/10 05:29:00 $ $Name: jdom_1_1 $"

.field private static final attrNameToTypeMap:Ljava/util/Map;


# instance fields
.field private atRoot:Z

.field private currentElement:Lorg/jdom/Element;

.field private declaredNamespaces:Ljava/util/List;

.field private document:Lorg/jdom/Document;

.field private entityDepth:I

.field private expand:Z

.field private externalEntities:Ljava/util/Map;

.field private factory:Lorg/jdom/JDOMFactory;

.field private ignoringBoundaryWhite:Z

.field private ignoringWhite:Z

.field private inCDATA:Z

.field private inDTD:Z

.field private inInternalSubset:Z

.field private internalSubset:Ljava/lang/StringBuffer;

.field private locator:Lorg/xml/sax/Locator;

.field private previousCDATA:Z

.field private suppress:Z

.field private textBuffer:Lorg/jdom/input/TextBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 84
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    .line 161
    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    const-string v1, "CDATA"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    const-string v1, "ID"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    const-string v1, "IDREF"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    const-string v1, "IDREFS"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    const-string v1, "ENTITY"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    const-string v1, "ENTITIES"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    const-string v1, "NMTOKEN"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    const-string v1, "NMTOKENS"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    const-string v1, "NOTATION"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    const-string v1, "ENUMERATION"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jdom/input/SAXHandler;-><init>(Lorg/jdom/JDOMFactory;)V

    .line 190
    return-void
.end method

.method public constructor <init>(Lorg/jdom/JDOMFactory;)V
    .locals 3
    .param p1, "factory"    # Lorg/jdom/JDOMFactory;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 200
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 98
    iput-boolean v1, p0, Lorg/jdom/input/SAXHandler;->inDTD:Z

    .line 101
    iput-boolean v1, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    .line 104
    iput-boolean v1, p0, Lorg/jdom/input/SAXHandler;->previousCDATA:Z

    .line 107
    iput-boolean v1, p0, Lorg/jdom/input/SAXHandler;->inCDATA:Z

    .line 110
    iput-boolean v2, p0, Lorg/jdom/input/SAXHandler;->expand:Z

    .line 114
    iput-boolean v1, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    .line 117
    iput v1, p0, Lorg/jdom/input/SAXHandler;->entityDepth:I

    .line 124
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    .line 127
    new-instance v0, Lorg/jdom/input/TextBuffer;

    invoke-direct {v0}, Lorg/jdom/input/TextBuffer;-><init>()V

    iput-object v0, p0, Lorg/jdom/input/SAXHandler;->textBuffer:Lorg/jdom/input/TextBuffer;

    .line 136
    iput-boolean v1, p0, Lorg/jdom/input/SAXHandler;->ignoringWhite:Z

    .line 139
    iput-boolean v1, p0, Lorg/jdom/input/SAXHandler;->ignoringBoundaryWhite:Z

    .line 201
    if-eqz p1, :cond_0

    .line 202
    iput-object p1, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    .line 207
    :goto_0
    iput-boolean v2, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jdom/input/SAXHandler;->declaredNamespaces:Ljava/util/List;

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jdom/input/SAXHandler;->externalEntities:Ljava/util/Map;

    .line 211
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/jdom/JDOMFactory;->document(Lorg/jdom/Element;)Lorg/jdom/Document;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    .line 212
    return-void

    .line 204
    :cond_0
    new-instance v0, Lorg/jdom/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom/DefaultJDOMFactory;-><init>()V

    iput-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    goto :goto_0
.end method

.method private appendExternalId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "publicID"    # Ljava/lang/String;
    .param p2, "systemID"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x22

    .line 930
    if-eqz p1, :cond_0

    .line 931
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, " PUBLIC \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 935
    :cond_0
    if-eqz p2, :cond_1

    .line 936
    if-nez p1, :cond_2

    .line 937
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, " SYSTEM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 942
    :goto_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 946
    :cond_1
    return-void

    .line 940
    :cond_2
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private static getAttributeType(Ljava/lang/String;)I
    .locals 4
    .param p0, "typeName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 975
    sget-object v1, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    .line 976
    .local v0, "type":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 977
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x28

    if-ne v1, v3, :cond_0

    .line 982
    const/16 v1, 0xa

    .line 988
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 985
    goto :goto_0

    .line 988
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private transferNamespaces(Lorg/jdom/Element;)V
    .locals 3
    .param p1, "element"    # Lorg/jdom/Element;

    .prologue
    .line 599
    iget-object v2, p0, Lorg/jdom/input/SAXHandler;->declaredNamespaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 600
    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 601
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom/Namespace;

    .line 602
    .local v1, "ns":Lorg/jdom/Namespace;
    invoke-virtual {p1}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 603
    invoke-virtual {p1, v1}, Lorg/jdom/Element;->addNamespaceDeclaration(Lorg/jdom/Namespace;)V

    goto :goto_0

    .line 606
    .end local v1    # "ns":Lorg/jdom/Namespace;
    :cond_1
    iget-object v2, p0, Lorg/jdom/input/SAXHandler;->declaredNamespaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 607
    return-void
.end method


# virtual methods
.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "eName"    # Ljava/lang/String;
    .param p2, "aName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "valueDefault"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    const/16 v2, 0x20

    .line 375
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_0

    .line 397
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, "  <!ATTLIST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 384
    if-eqz p4, :cond_2

    .line 385
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    :goto_1
    if-eqz p4, :cond_1

    const-string v0, "#FIXED"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 396
    :cond_1
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 387
    :cond_2
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public characters([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 620
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->previousCDATA:Z

    iget-boolean v1, p0, Lorg/jdom/input/SAXHandler;->inCDATA:Z

    if-eq v0, v1, :cond_2

    .line 624
    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    .line 627
    :cond_2
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->textBuffer:Lorg/jdom/input/TextBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jdom/input/TextBuffer;->append([CII)V

    goto :goto_0
.end method

.method public comment([CII)V
    .locals 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 862
    iget-boolean v1, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    if-eqz v1, :cond_1

    .line 880
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    .line 866
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 867
    .local v0, "commentText":Ljava/lang/String;
    iget-boolean v1, p0, Lorg/jdom/input/SAXHandler;->inDTD:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/jdom/input/SAXHandler;->expand:Z

    if-nez v1, :cond_2

    .line 868
    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v2, "  <!--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "-->\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 873
    :cond_2
    iget-boolean v1, p0, Lorg/jdom/input/SAXHandler;->inDTD:Z

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 874
    iget-boolean v1, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    if-eqz v1, :cond_3

    .line 875
    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    iget-object v2, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    iget-object v3, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v3, v0}, Lorg/jdom/JDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom/Comment;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto :goto_0

    .line 877
    :cond_3
    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->getCurrentElement()Lorg/jdom/Element;

    move-result-object v2

    iget-object v3, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v3, v0}, Lorg/jdom/JDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom/Comment;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto :goto_0
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 408
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_0

    .line 415
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, "  <!ELEMENT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public endCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 842
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    if-eqz v0, :cond_0

    .line 846
    :goto_0
    return-void

    .line 844
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->previousCDATA:Z

    .line 845
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inCDATA:Z

    goto :goto_0
.end method

.method public endDTD()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 761
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    invoke-virtual {v0}, Lorg/jdom/Document;->getDocType()Lorg/jdom/DocType;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jdom/DocType;->setInternalSubset(Ljava/lang/String;)V

    .line 762
    iput-boolean v2, p0, Lorg/jdom/input/SAXHandler;->inDTD:Z

    .line 763
    iput-boolean v2, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    .line 764
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 714
    iget-boolean v1, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    if-eqz v1, :cond_0

    .line 732
    :goto_0
    return-void

    .line 716
    :cond_0
    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    .line 718
    iget-boolean v1, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    if-nez v1, :cond_2

    .line 719
    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->currentElement:Lorg/jdom/Element;

    invoke-virtual {v1}, Lorg/jdom/Element;->getParent()Lorg/jdom/Parent;

    move-result-object v0

    .line 720
    .local v0, "p":Lorg/jdom/Parent;
    instance-of v1, v0, Lorg/jdom/Document;

    if-eqz v1, :cond_1

    .line 721
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    goto :goto_0

    .line 724
    :cond_1
    check-cast v0, Lorg/jdom/Element;

    .end local v0    # "p":Lorg/jdom/Parent;
    iput-object v0, p0, Lorg/jdom/input/SAXHandler;->currentElement:Lorg/jdom/Element;

    goto :goto_0

    .line 728
    :cond_2
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Ill-formed XML document (missing opening tag for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 816
    iget v0, p0, Lorg/jdom/input/SAXHandler;->entityDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jdom/input/SAXHandler;->entityDepth:I

    .line 817
    iget v0, p0, Lorg/jdom/input/SAXHandler;->entityDepth:I

    if-nez v0, :cond_0

    .line 820
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    .line 822
    :cond_0
    const-string v0, "[dtd]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 823
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    .line 825
    :cond_1
    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicID"    # Ljava/lang/String;
    .param p3, "systemID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->externalEntities:Ljava/util/Map;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_0

    .line 359
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, "  <!ENTITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    invoke-direct {p0, p2, p3}, Lorg/jdom/input/SAXHandler;->appendExternalId(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method protected flushCharacters()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 654
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->ignoringBoundaryWhite:Z

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->textBuffer:Lorg/jdom/input/TextBuffer;

    invoke-virtual {v0}, Lorg/jdom/input/TextBuffer;->isAllWhitespace()Z

    move-result v0

    if-nez v0, :cond_0

    .line 656
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->textBuffer:Lorg/jdom/input/TextBuffer;

    invoke-virtual {v0}, Lorg/jdom/input/TextBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jdom/input/SAXHandler;->flushCharacters(Ljava/lang/String;)V

    .line 662
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->textBuffer:Lorg/jdom/input/TextBuffer;

    invoke-virtual {v0}, Lorg/jdom/input/TextBuffer;->clear()V

    .line 663
    return-void

    .line 660
    :cond_1
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->textBuffer:Lorg/jdom/input/TextBuffer;

    invoke-virtual {v0}, Lorg/jdom/input/TextBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jdom/input/SAXHandler;->flushCharacters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected flushCharacters(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 673
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 674
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inCDATA:Z

    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->previousCDATA:Z

    .line 697
    :goto_0
    return-void

    .line 689
    :cond_0
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->previousCDATA:Z

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->getCurrentElement()Lorg/jdom/Element;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v2, p1}, Lorg/jdom/JDOMFactory;->cdata(Ljava/lang/String;)Lorg/jdom/CDATA;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    .line 696
    :goto_1
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inCDATA:Z

    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->previousCDATA:Z

    goto :goto_0

    .line 693
    :cond_1
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->getCurrentElement()Lorg/jdom/Element;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v2, p1}, Lorg/jdom/JDOMFactory;->text(Ljava/lang/String;)Lorg/jdom/Text;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto :goto_1
.end method

.method public getCurrentElement()Lorg/jdom/Element;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 955
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->currentElement:Lorg/jdom/Element;

    if-nez v0, :cond_0

    .line 956
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Ill-formed XML document (multiple root elements detected)"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 959
    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->currentElement:Lorg/jdom/Element;

    return-object v0
.end method

.method public getDocument()Lorg/jdom/Document;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    return-object v0
.end method

.method public getDocumentLocator()Lorg/xml/sax/Locator;
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->locator:Lorg/xml/sax/Locator;

    return-object v0
.end method

.method public getExpandEntities()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->expand:Z

    return v0
.end method

.method public getFactory()Lorg/jdom/JDOMFactory;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    return-object v0
.end method

.method public getIgnoringBoundaryWhitespace()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->ignoringBoundaryWhite:Z

    return v0
.end method

.method public getIgnoringElementContentWhitespace()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->ignoringWhite:Z

    return v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 642
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->ignoringWhite:Z

    if-nez v0, :cond_0

    .line 643
    invoke-virtual {p0, p1, p2, p3}, Lorg/jdom/input/SAXHandler;->characters([CII)V

    .line 645
    :cond_0
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 428
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_0

    .line 439
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, "  <!ENTITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, "% "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    :goto_1
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 434
    :cond_1
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicID"    # Ljava/lang/String;
    .param p3, "systemID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 892
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_0

    .line 898
    :goto_0
    return-void

    .line 894
    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, "  <!NOTATION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 896
    invoke-direct {p0, p2, p3}, Lorg/jdom/input/SAXHandler;->appendExternalId(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 455
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    if-eqz v0, :cond_0

    .line 465
    :goto_0
    return-void

    .line 457
    :cond_0
    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    .line 459
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    iget-object v2, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v2, p1, p2}, Lorg/jdom/JDOMFactory;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto :goto_0

    .line 462
    :cond_1
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->getCurrentElement()Lorg/jdom/Element;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v2, p1, p2}, Lorg/jdom/JDOMFactory;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto :goto_0
.end method

.method protected pushElement(Lorg/jdom/Element;)V
    .locals 2
    .param p1, "element"    # Lorg/jdom/Element;

    .prologue
    .line 222
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    invoke-virtual {v0, p1}, Lorg/jdom/Document;->setRootElement(Lorg/jdom/Element;)Lorg/jdom/Document;

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    .line 229
    :goto_0
    iput-object p1, p0, Lorg/jdom/input/SAXHandler;->currentElement:Lorg/jdom/Element;

    .line 230
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->currentElement:Lorg/jdom/Element;

    invoke-interface {v0, v1, p1}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto :goto_0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 1005
    iput-object p1, p0, Lorg/jdom/input/SAXHandler;->locator:Lorg/xml/sax/Locator;

    .line 1006
    return-void
.end method

.method public setExpandEntities(Z)V
    .locals 0
    .param p1, "expand"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lorg/jdom/input/SAXHandler;->expand:Z

    .line 264
    return-void
.end method

.method public setIgnoringBoundaryWhitespace(Z)V
    .locals 0
    .param p1, "ignoringBoundaryWhite"    # Z

    .prologue
    .line 302
    iput-boolean p1, p0, Lorg/jdom/input/SAXHandler;->ignoringBoundaryWhite:Z

    .line 303
    return-void
.end method

.method public setIgnoringElementContentWhitespace(Z)V
    .locals 0
    .param p1, "ignoringWhite"    # Z

    .prologue
    .line 291
    iput-boolean p1, p0, Lorg/jdom/input/SAXHandler;->ignoringWhite:Z

    .line 292
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 479
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    :goto_0
    return-void

    .line 481
    :cond_0
    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    .line 483
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->getCurrentElement()Lorg/jdom/Element;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v2, p1}, Lorg/jdom/JDOMFactory;->entityRef(Ljava/lang/String;)Lorg/jdom/EntityRef;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto :goto_0
.end method

.method public startCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 833
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    if-eqz v0, :cond_0

    .line 836
    :goto_0
    return-void

    .line 835
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inCDATA:Z

    goto :goto_0
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicID"    # Ljava/lang/String;
    .param p3, "systemID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 747
    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    .line 749
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    iget-object v2, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v2, p1, p2, p3}, Lorg/jdom/JDOMFactory;->docType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/DocType;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    .line 750
    iput-boolean v3, p0, Lorg/jdom/input/SAXHandler;->inDTD:Z

    .line 751
    iput-boolean v3, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    .line 752
    return-void
.end method

.method public startDocument()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->locator:Lorg/xml/sax/Locator;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jdom/Document;->setBaseURI(Ljava/lang/String;)V

    .line 336
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 16
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 522
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/jdom/input/SAXHandler;->suppress:Z

    if-eqz v14, :cond_0

    .line 590
    :goto_0
    return-void

    .line 524
    :cond_0
    const/4 v8, 0x0

    .line 526
    .local v8, "element":Lorg/jdom/Element;
    if-eqz p1, :cond_4

    const-string v14, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 527
    const-string v12, ""

    .line 530
    .local v12, "prefix":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 531
    const-string v14, ":"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 532
    .local v13, "split":I
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 534
    .end local v13    # "split":I
    :cond_1
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v9

    .line 536
    .local v9, "elementNamespace":Lorg/jdom/Namespace;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    move-object/from16 v0, p2

    invoke-interface {v14, v0, v9}, Lorg/jdom/JDOMFactory;->element(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;

    move-result-object v8

    .line 543
    .end local v9    # "elementNamespace":Lorg/jdom/Namespace;
    .end local v12    # "prefix":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jdom/input/SAXHandler;->declaredNamespaces:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_2

    .line 544
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/jdom/input/SAXHandler;->transferNamespaces(Lorg/jdom/Element;)V

    .line 548
    :cond_2
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v11

    .local v11, "len":I
    :goto_2
    if-ge v10, v11, :cond_8

    .line 549
    const/4 v7, 0x0

    .line 551
    .local v7, "attribute":Lorg/jdom/Attribute;
    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 552
    .local v2, "attLocalName":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v5

    .line 553
    .local v5, "attQName":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/jdom/input/SAXHandler;->getAttributeType(Ljava/lang/String;)I

    move-result v6

    .line 559
    .local v6, "attType":I
    const-string v14, "xmlns:"

    invoke-virtual {v5, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "xmlns"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 548
    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 538
    .end local v2    # "attLocalName":Ljava/lang/String;
    .end local v5    # "attQName":Ljava/lang/String;
    .end local v6    # "attType":I
    .end local v7    # "attribute":Lorg/jdom/Attribute;
    .end local v10    # "i":I
    .end local v11    # "len":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Lorg/jdom/JDOMFactory;->element(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v8

    goto :goto_1

    .line 565
    .restart local v2    # "attLocalName":Ljava/lang/String;
    .restart local v5    # "attQName":Ljava/lang/String;
    .restart local v6    # "attType":I
    .restart local v7    # "attribute":Lorg/jdom/Attribute;
    .restart local v10    # "i":I
    .restart local v11    # "len":I
    :cond_5
    const-string v14, ""

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    const-string v14, ":"

    invoke-virtual {v5, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_6

    .line 566
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v5, v15, v6}, Lorg/jdom/JDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;I)Lorg/jdom/Attribute;

    move-result-object v7

    .line 578
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v14, v8, v7}, Lorg/jdom/JDOMFactory;->setAttribute(Lorg/jdom/Element;Lorg/jdom/Attribute;)V

    goto :goto_3

    .line 567
    :cond_6
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 568
    const/4 v14, 0x0

    const-string v15, ":"

    invoke-virtual {v5, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v5, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 569
    .local v4, "attPrefix":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v3

    .line 572
    .local v3, "attNs":Lorg/jdom/Namespace;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v2, v15, v6, v3}, Lorg/jdom/JDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;ILorg/jdom/Namespace;)Lorg/jdom/Attribute;

    move-result-object v7

    .line 574
    goto :goto_4

    .line 575
    .end local v3    # "attNs":Lorg/jdom/Namespace;
    .end local v4    # "attPrefix":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v2, v15, v6}, Lorg/jdom/JDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;I)Lorg/jdom/Attribute;

    move-result-object v7

    goto :goto_4

    .line 581
    .end local v2    # "attLocalName":Ljava/lang/String;
    .end local v5    # "attQName":Ljava/lang/String;
    .end local v6    # "attType":I
    .end local v7    # "attribute":Lorg/jdom/Attribute;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    .line 583
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    if-eqz v14, :cond_9

    .line 584
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    invoke-virtual {v14, v8}, Lorg/jdom/Document;->setRootElement(Lorg/jdom/Element;)Lorg/jdom/Document;

    .line 585
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    .line 589
    :goto_5
    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/jdom/input/SAXHandler;->currentElement:Lorg/jdom/Element;

    goto/16 :goto_0

    .line 587
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual/range {p0 .. p0}, Lorg/jdom/input/SAXHandler;->getCurrentElement()Lorg/jdom/Element;

    move-result-object v15

    invoke-interface {v14, v15, v8}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto :goto_5
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 767
    iget v4, p0, Lorg/jdom/input/SAXHandler;->entityDepth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/jdom/input/SAXHandler;->entityDepth:I

    .line 769
    iget-boolean v4, p0, Lorg/jdom/input/SAXHandler;->expand:Z

    if-nez v4, :cond_0

    iget v4, p0, Lorg/jdom/input/SAXHandler;->entityDepth:I

    if-le v4, v6, :cond_1

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    const-string v4, "[dtd]"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 776
    iput-boolean v5, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    goto :goto_0

    .line 781
    :cond_2
    iget-boolean v4, p0, Lorg/jdom/input/SAXHandler;->inDTD:Z

    if-nez v4, :cond_0

    const-string v4, "amp"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "lt"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "gt"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "apos"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "quot"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 788
    iget-boolean v4, p0, Lorg/jdom/input/SAXHandler;->expand:Z

    if-nez v4, :cond_0

    .line 789
    const/4 v2, 0x0

    .line 790
    .local v2, "pub":Ljava/lang/String;
    const/4 v3, 0x0

    .line 791
    .local v3, "sys":Ljava/lang/String;
    iget-object v4, p0, Lorg/jdom/input/SAXHandler;->externalEntities:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v1, v4

    check-cast v1, [Ljava/lang/String;

    .line 792
    .local v1, "ids":[Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 793
    aget-object v2, v1, v5

    .line 794
    aget-object v3, v1, v6

    .line 803
    :cond_3
    iget-boolean v4, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    if-nez v4, :cond_4

    .line 804
    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    .line 805
    iget-object v4, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v4, p1, v2, v3}, Lorg/jdom/JDOMFactory;->entityRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/EntityRef;

    move-result-object v0

    .line 808
    .local v0, "entity":Lorg/jdom/EntityRef;
    iget-object v4, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->getCurrentElement()Lorg/jdom/Element;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    .line 810
    .end local v0    # "entity":Lorg/jdom/EntityRef;
    :cond_4
    iput-boolean v6, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    goto :goto_0
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 496
    iget-boolean v1, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    if-eqz v1, :cond_0

    .line 500
    :goto_0
    return-void

    .line 498
    :cond_0
    invoke-static {p1, p2}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v0

    .line 499
    .local v0, "ns":Lorg/jdom/Namespace;
    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->declaredNamespaces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicID"    # Ljava/lang/String;
    .param p3, "systemID"    # Ljava/lang/String;
    .param p4, "notationName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 912
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_0

    .line 920
    :goto_0
    return-void

    .line 914
    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, "  <!ENTITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 916
    invoke-direct {p0, p2, p3}, Lorg/jdom/input/SAXHandler;->appendExternalId(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, " NDATA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 919
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
