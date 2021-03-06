USE [TestUmasNet]
GO
/****** Object:  Table [dbo].[MT_CLIENT]    Script Date: 07/11/2015 17:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_CLIENT](
	[CODCLI] [varchar](30) NOT NULL,
	[DIG] [varchar](1) NULL,
	[PATERNO] [varchar](100) NOT NULL,
	[MATERNO] [varchar](100) NOT NULL,
	[NOMBRE] [varchar](200) NOT NULL,
	[SEXO] [varchar](1) NOT NULL,
	[NACIONALIDAD] [varchar](30) NOT NULL,
	[DOBLENACION] [varchar](32) NULL,
	[TIPOVISA] [varchar](32) NULL,
	[PASAPORTE] [decimal](12, 0) NULL,
	[FECNAC] [datetime] NOT NULL,
	[CODESTCIVIL] [varchar](30) NOT NULL,
	[CODSISSALUD] [decimal](10, 0) NOT NULL,
	[DIRPROC] [varchar](110) NULL,
	[CIUPROC] [varchar](30) NULL,
	[COMUNAPRO] [varchar](30) NULL,
	[FONOPROC] [varchar](32) NULL,
	[DIRACTUAL] [varchar](110) NOT NULL,
	[COMUNA] [varchar](30) NOT NULL,
	[CIUDADACT] [varchar](30) NOT NULL,
	[FONOACT] [varchar](20) NULL,
	[COLEGIO] [decimal](10, 0) NOT NULL,
	[ANOEEM] [varchar](4) NOT NULL,
	[NOTAEM] [varchar](4) NULL,
	[UNIVERSIDAD] [numeric](4, 0) NULL,
	[ES_PAIS] [decimal](2, 0) NULL,
	[ES_CIUDAD] [varchar](30) NULL,
	[ES_CARR] [varchar](60) NULL,
	[ES_TITULADO] [varchar](1) NULL,
	[ES_TITULO] [varchar](60) NULL,
	[ES_ULANO] [decimal](4, 0) NULL,
	[ES_SEMAP] [decimal](4, 0) NULL,
	[AL_ACTIVI] [varchar](60) NULL,
	[AL_EMP] [varchar](60) NULL,
	[AL_DIRCOM] [varchar](60) NULL,
	[AL_FONO] [varchar](30) NULL,
	[CODAPOD] [varchar](30) NULL,
	[DOCUMENTADO] [varchar](1) NOT NULL,
	[FECDOC] [datetime] NULL,
	[ARAN_BAS] [varchar](1) NULL,
	[FECARBAS] [datetime] NULL,
	[CIUDNAC] [varchar](30) NOT NULL,
	[ANO] [decimal](4, 0) NOT NULL,
	[EMERGENCIA] [varchar](70) NULL,
	[FONOEMERG] [varchar](30) NULL,
	[USUARIO] [varchar](8) NOT NULL,
	[FECMOD] [datetime] NOT NULL,
	[RUTCLI] [varchar](30) NULL,
	[DOLENCIA] [varchar](70) NULL,
	[MAIL] [varchar](100) NULL,
	[CONTRAINDICACION] [varchar](70) NULL,
	[ANOINGRESO] [int] NULL,
	[PERIODO] [smallint] NULL,
	[VIGENTE] [varchar](1) NULL,
	[FEC_MAT] [datetime] NULL,
	[FECING] [datetime] NULL,
	[CODAVAL] [varchar](30) NULL,
	[CODASEGURADO] [varchar](30) NULL,
	[VIADMISION] [varchar](10) NULL,
	[ACHSCCAF18] [varchar](1) NULL,
	[LOCALIDADACT] [varchar](30) NULL,
	[LOCALIDADPRO] [varchar](30) NULL,
	[MATRICULABLE] [varchar](1) NULL,
	[DEUDA_BIBLIOTECA] [varchar](1) NULL,
	[CODMEDIO] [varchar](10) NULL,
	[VIACONSULTA] [varchar](10) NULL,
	[DESBL_TOMARAMOS] [varchar](1) NULL,
	[CATEGORIA] [varchar](10) NULL,
	[CODEMPRESA] [numeric](10, 0) NULL,
	[CODTRAMO] [decimal](5, 0) NULL,
	[CODMOTIVO] [decimal](5, 0) NULL,
	[REGLICEM] [varchar](20) NULL,
	[NUMINSCRIPCION] [varchar](20) NULL,
	[FECHAINSCRIP] [datetime] NULL,
	[CIRCUNSCRIPCION] [varchar](20) NULL,
	[ANOINSCRIP] [int] NULL,
	[DEUDA] [int] NULL,
	[NROHIJOS] [int] NULL,
	[ATRABAJADO] [int] NULL,
	[CELULARACT] [varchar](30) NULL,
	[ES_PROMEDIONOTAS] [decimal](6, 2) NULL,
	[ES_UNIVERSIDADEXT] [varchar](50) NULL,
	[TIPOMERITO] [numeric](5, 0) NULL,
	[LUGARCURSO] [numeric](2, 0) NULL,
	[DESCMERITO] [varchar](50) NULL,
	[TIPODEPORTE] [varchar](50) NULL,
	[DESCDEPORTE] [varchar](50) NULL,
	[CARRERAORIGEN] [varchar](10) NULL,
	[CARRERADESTINO] [varchar](10) NULL,
	[INSTITUCION] [varchar](50) NULL,
	[PAIS] [decimal](4, 0) NULL,
	[Es_Iniano] [decimal](4, 0) NULL,
	[SENCE] [int] NULL,
	[DATOS_P] [varchar](1) NULL,
	[FECINIPAS] [datetime] NULL,
	[FECFINPAS] [datetime] NULL,
	[Mail_Inst] [varchar](100) NULL,
	[Visible_Egresado] [varchar](2) NULL,
	[Recibe_informativos] [varchar](2) NULL,
	[AREAPROC] [int] NULL,
	[AREAACT] [int] NULL,
	[CAE] [int] NULL,
	[CELULAR] [varchar](10) NULL,
	[BecaNuevoMilenio] [int] NULL,
	[BecaExcelencia] [int] NULL,
	[OTRABECA] [varchar](30) NULL,
	[GLOSACAE] [varchar](30) NULL,
	[FECHA_TRASPASO] [datetime] NULL,
	[Clave_Mail_Inst] [varchar](100) NULL,
 CONSTRAINT [PK_MT_CLIENT] PRIMARY KEY NONCLUSTERED 
(
	[CODCLI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_CARRER]    Script Date: 07/11/2015 17:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_CARRER](
	[CODCARR] [varchar](30) NOT NULL,
	[NOMBRE_C] [varchar](300) NULL,
	[NOMBRE_L] [varchar](300) NULL,
	[SIGLA] [varchar](10) NULL,
	[OTORTITULO] [varchar](300) NULL,
	[OTORGRA] [varchar](300) NULL,
	[DURSEM] [decimal](2, 0) NULL,
	[DSCTO] [decimal](5, 2) NULL,
	[ARANCEL] [decimal](12, 0) NULL,
	[VACANTES] [decimal](18, 0) NULL,
	[PNDVERBAL] [numeric](22, 8) NULL,
	[PNDMATEMAT] [numeric](22, 8) NULL,
	[PNDHISGEO] [numeric](22, 8) NULL,
	[PNDCSOC] [numeric](22, 8) NULL,
	[PNDMAT] [numeric](22, 8) NULL,
	[PNDFIS] [numeric](22, 8) NULL,
	[PNDQUIM] [numeric](22, 8) NULL,
	[PNDBIO] [numeric](22, 8) NULL,
	[PNDNOTEM] [numeric](22, 8) NULL,
	[POSTGRADO] [varchar](1) NULL,
	[PONDNP] [numeric](22, 8) NULL,
	[PONDNE] [numeric](22, 8) NULL,
	[PONDNER] [numeric](22, 8) NULL,
	[REPROBADOS] [varchar](1) NULL,
	[SOLICITA] [varchar](1) NULL,
	[ARANBAS] [decimal](20, 0) NULL,
	[CODPESTUD] [varchar](30) NULL,
	[NOTAMIN] [decimal](4, 1) NULL,
	[PONDERMIN] [decimal](3, 0) NULL,
	[REGIMEN] [varchar](100) NULL,
	[DIRECTOR] [varchar](50) NULL,
	[TOTALHOR] [decimal](5, 0) NULL,
	[JORNADA] [varchar](10) NULL,
	[CODMINDUC] [varchar](100) NULL,
	[CURRICULUM] [varchar](30) NULL,
	[CERTIFICADO] [varchar](70) NULL,
	[INSTITUCION] [varchar](60) NULL,
	[DECRETO] [varchar](130) NULL,
	[APROX] [char](1) NULL,
	[SEDE] [varchar](30) NULL,
	[TIPOCARR] [decimal](3, 0) NULL,
	[USUARIO] [int] NULL,
	[FECMOD] [datetime] NULL,
	[DIRCOCARR] [varchar](100) NULL,
	[PROFDIRECTOR] [varchar](60) NULL,
	[READECUACION] [varchar](60) NULL,
	[EXAMINADA] [char](1) NULL,
	[CARGO] [varchar](30) NULL,
	[CALCULOPROM] [char](1) NULL,
	[GRUPO] [varchar](20) NULL,
	[POSTULABLE] [varchar](1) NULL,
	[NORMATIVANOTAS] [varchar](3000) NULL,
	[NOTATOPEEX] [decimal](4, 1) NULL,
	[RI] [char](1) NULL,
	[NOTAMAX] [decimal](4, 1) NULL,
	[PORCMINEX] [decimal](3, 0) NULL,
	[PORCMAXEX] [decimal](3, 0) NULL,
	[NOTAMINAPRO] [decimal](4, 1) NULL,
	[PROMNPEX] [char](1) NULL,
	[NOTARI] [decimal](4, 1) NULL,
	[USA_NOTASPARCIALES] [varchar](1) NULL,
	[PORCONTROLES] [decimal](10, 6) NULL,
	[PORASISMIN] [decimal](4, 1) NULL,
	[PORNOTAEJER] [decimal](10, 6) NULL,
	[PORCERT1] [decimal](10, 6) NULL,
	[PORCERT2] [decimal](10, 6) NULL,
	[PORCERT3] [decimal](10, 6) NULL,
	[PORCERT4] [decimal](10, 6) NULL,
	[PORCERT5] [decimal](10, 6) NULL,
	[PORNOTAPRESREP] [decimal](4, 1) NULL,
	[NOTAMINPRE] [numeric](3, 1) NULL,
	[REPITE_NF1_EN_NF2] [char](1) NULL,
	[TEXTO_PROMOCION] [varchar](300) NULL,
	[v_credito] [varchar](1) NULL,
	[v_bloqueo] [varchar](1) NULL,
	[UsuSolici] [varchar](20) NULL,
	[FECHA_INICIO_CLASES] [datetime] NULL,
	[NUM_MAX_PERIODO] [numeric](18, 0) NULL,
	[TIPO_REGIMEN] [int] NULL,
	[REQUISITOED] [varchar](1) NULL,
	[CARGANFPLANILLA] [char](1) NULL,
	[FILTRAJORNADA] [varchar](1) NULL,
	[PAGAINSCRIPCION] [varchar](1) NULL,
	[PNDVERBALPSU] [numeric](22, 8) NULL,
	[PNDMATEMATPSU] [numeric](22, 8) NULL,
	[PNDHISGEOPSU] [numeric](22, 8) NULL,
	[PNDFISPSU] [numeric](22, 8) NULL,
	[PNDQUIMPSU] [numeric](22, 8) NULL,
	[PNDBIOPSU] [numeric](22, 8) NULL,
	[ENCUESTASINNOTA] [varchar](1) NULL,
	[CONSIDERADOSREPROBADAS] [varchar](1) NULL,
	[SUMAENHISTORICO] [varchar](1) NULL,
	[PROMACOMULFICHA] [varchar](1) NULL,
	[ContestAsigInasistente] [varchar](1) NULL,
	[PorcGenerales] [varchar](1) NULL,
	[OMITEENCUESTA] [varchar](1) NULL,
	[ENCUESTAANTES] [varchar](1) NULL,
	[FECHA_FINAL_CLASES] [datetime] NULL,
	[NIVELCERTIFICADO] [numeric](18, 0) NULL,
	[HORASPRACTICA] [numeric](18, 0) NULL,
	[FORMATOESPECIALP] [varchar](2) NULL,
	[NOTAMINPROM1] [decimal](3, 1) NULL,
	[ARANCELXASIGNATURA] [varchar](1) NULL,
	[RNOTAORI] [varchar](4) NULL,
	[CONCEPTO] [varchar](2) NULL,
	[PORCERT6] [decimal](10, 6) NULL,
	[PORCERT7] [decimal](10, 6) NULL,
	[PORCERT8] [decimal](10, 6) NULL,
	[PORCERT9] [decimal](10, 6) NULL,
	[PORCERT10] [decimal](10, 6) NULL,
	[TEXTONOTA1] [varchar](20) NULL,
	[TEXTONOTA2] [varchar](20) NULL,
	[TEXTONOTA3] [varchar](20) NULL,
	[TEXTONOTA4] [varchar](20) NULL,
	[TEXTONOTA5] [varchar](20) NULL,
	[TEXTONOTA6] [varchar](20) NULL,
	[TEXTONOTA7] [varchar](20) NULL,
	[TEXTONOTA8] [varchar](20) NULL,
	[TEXTONOTA9] [varchar](20) NULL,
	[TEXTONOTA10] [varchar](20) NULL,
	[VALIDADOCPEND] [varchar](2) NULL,
	[TEXTONOTA11] [varchar](20) NULL,
	[TEXTONOTA12] [varchar](20) NULL,
	[CODFAC] [varchar](30) NULL,
	[AnoInicio] [int] NULL,
	[FICTICIA] [char](1) NULL,
	[NotaRepMinExa] [decimal](4, 1) NULL,
	[ReqExRepNPyNE] [char](1) NULL,
	[MINCURSO] [int] NULL,
	[NOTATOPEPROMEXREP] [varchar](1) NULL,
	[paravacantes] [varchar](1) NULL,
	[FORMATOESPECIALNPYNE] [varchar](2) NULL,
	[NOTAEXIMICION] [numeric](3, 1) NULL,
	[NoAProximaNP] [varchar](1) NULL,
	[SUPERNUMERARIOS] [int] NULL,
	[FECCREACION] [datetime] NULL,
	[VIGENCIA] [datetime] NULL,
	[ESTADO] [varchar](20) NULL,
	[EN_CATALOGO] [nchar](2) NULL,
	[CARRERA_EVALDOC] [varchar](2) NULL,
	[ORDEN] [numeric](18, 0) NULL,
	[GRAD_OTOR_MUJER] [varchar](300) NULL,
	[TITU_OTOR_MUJER] [varchar](300) NULL,
	[TITU_INTER_MUJER] [varchar](300) NULL,
	[TITU_INTER_HOMBRE] [varchar](300) NULL,
	[CCOSTO] [varchar](11) NULL,
	[CUPOSREGULARES] [decimal](22, 0) NULL,
	[CUPOSESPECIALES] [decimal](22, 0) NULL,
	[CUPOSSOBRECUPOS] [decimal](22, 0) NULL,
	[CORTEPAA] [decimal](22, 8) NULL,
	[CORTEPSU] [decimal](22, 8) NULL,
	[NEMPSUREG] [decimal](22, 0) NULL,
	[NEMPSUESP] [decimal](22, 0) NULL,
	[VERBALPSUESP] [decimal](22, 0) NULL,
	[MATPSUESP] [decimal](22, 0) NULL,
	[HISTPSUESP] [decimal](22, 0) NULL,
	[ESPFISPSUESP] [decimal](22, 0) NULL,
	[ESPQUIPSUESP] [decimal](22, 0) NULL,
	[ESPBIOPSUESP] [decimal](22, 0) NULL,
	[NEMPUNTMINPAAREG] [decimal](22, 8) NULL,
	[VERBALPUNTMINPAAREG] [decimal](22, 8) NULL,
	[MATPUNTMINPAAREG] [decimal](22, 8) NULL,
	[HISTPUNTMINPAAREG] [decimal](22, 8) NULL,
	[ESPCSPUNTMINPAAREG] [decimal](22, 8) NULL,
	[ESPMATPUNTMINPAAREG] [decimal](22, 8) NULL,
	[ESPFISPUNTMINPAAREG] [decimal](22, 8) NULL,
	[ESPQUIPUNTMINPAAREG] [decimal](22, 8) NULL,
	[ESPBIOPUNTMINPAAREG] [decimal](22, 8) NULL,
	[NEMPUNTMINPSUREG] [decimal](22, 8) NULL,
	[VERBALPUNTMINPSUREG] [decimal](22, 8) NULL,
	[MATPUNTMINPSUREG] [decimal](22, 8) NULL,
	[HISTPUNTMINPSUREG] [decimal](22, 8) NULL,
	[ESPFISPUNTMINPSUREG] [decimal](22, 8) NULL,
	[ESPQUIPUNTMINPSUREG] [decimal](22, 8) NULL,
	[ESPBIOPUNTMINPSUREG] [decimal](22, 8) NULL,
	[NEMPUNTMINPSUESP] [decimal](22, 8) NULL,
	[VERBALPUNTMINPSUESP] [decimal](22, 8) NULL,
	[MATPUNTMINPSUESP] [decimal](22, 8) NULL,
	[HISTPUNTMINPSUESP] [decimal](22, 8) NULL,
	[ESPFISPUNTMINPSUESP] [decimal](22, 8) NULL,
	[ESPQUIPUNTMINPSUESP] [decimal](22, 8) NULL,
	[ESPBIOPUNTMINPSUESP] [decimal](22, 8) NULL,
	[GRUPOBIENESTAR] [numeric](2, 0) NULL,
	[NotaMayorEntreNPyNER] [char](1) NULL,
	[CODAREA] [int] NULL,
	[ActivaDoctosPortal] [char](1) NULL,
	[ActivaAvisosPorTal] [char](1) NULL,
	[ActivaRecupProfesor] [char](1) NULL,
	[ACTIVAASISTWEBALUM] [char](1) NULL,
	[MINIMOPSU] [numeric](18, 0) NULL,
	[MINIMONEM] [numeric](2, 1) NULL,
	[CLASIFICADOR] [varchar](20) NULL,
	[EnOfertaAcademicaIngresa] [char](2) NULL,
	[CodigoCarreraIngresa] [varchar](4) NULL,
	[AnoDuracionCarreraIngresa] [nchar](10) NULL,
	[AnoOfertaAcademicaIngresa] [int] NULL,
	[TipoOferta] [char](30) NULL,
	[CuposCAE] [int] NULL,
	[CuposCAE_CS] [int] NULL,
	[MODALIDAD] [int] NULL,
	[REQ_ANTECEDENTES] [varchar](2) NULL,
	[NFUsaMayorEntreNEyNER] [varchar](2) NULL,
	[TIPOMAT] [int] NULL,
	[Calcular_NPR] [varchar](2) NULL,
	[PORASISMINPRAC] [decimal](4, 1) NULL,
	[PORASISMINLAB] [decimal](4, 1) NULL,
	[NOTAMINPRAC] [decimal](4, 1) NULL,
	[NOTAMINLAB] [decimal](4, 1) NULL,
	[NOTAREPACTIVIDAD] [decimal](4, 1) NULL,
	[ESREQUISITOPRAC] [char](2) NULL,
	[ESREQUISITOLAB] [char](2) NULL,
	[ESREQUISITOAPROBASISPRAC] [char](2) NULL,
	[ESREQUISITOAPROBASISLAB] [char](2) NULL,
	[requiere_asist_ne] [varchar](2) NULL,
 CONSTRAINT [PK_MT_CARRER] PRIMARY KEY NONCLUSTERED 
(
	[CODCARR] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_ALUMNO]    Script Date: 07/11/2015 17:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_ALUMNO](
	[CODCLI] [varchar](30) NOT NULL,
	[CODCARPR] [varchar](30) NOT NULL,
	[CODCARPT] [varchar](30) NULL,
	[ESTACAD] [varchar](30) NOT NULL,
	[ESTFINAN] [varchar](30) NOT NULL,
	[ANO] [numeric](4, 0) NOT NULL,
	[BIBLIOTECA] [varchar](30) NULL,
	[CODACAD] [varchar](10) NULL,
	[PERIODO] [varchar](1) NOT NULL,
	[PONDERADO] [numeric](5, 0) NULL,
	[FECREG] [datetime] NULL,
	[CODPESTUD] [varchar](30) NOT NULL,
	[ESTFINANOBS] [varchar](1000) NULL,
	[CLAVE] [varchar](8) NULL,
	[PUNTAJE] [numeric](5, 0) NULL,
	[ANOPESTUD] [numeric](4, 0) NULL,
	[USUARIO] [varchar](8) NOT NULL,
	[FECMOD] [datetime] NULL,
	[RUT] [varchar](30) NOT NULL,
	[JORNADA] [varchar](10) NULL,
	[NIVEL] [numeric](2, 0) NULL,
	[CAUSALELIM] [varchar](10) NULL,
	[FECING] [datetime] NULL,
	[PERIODOTIT] [numeric](5, 0) NULL,
	[ANOTIT] [numeric](5, 0) NULL,
	[ESUDD] [varchar](2) NULL,
	[FEC_MAT] [datetime] NULL,
	[ANO_MAT] [numeric](18, 0) NULL,
	[PERIODO_MAT] [numeric](18, 0) NULL,
	[MATRICULADO] [varchar](1) NULL,
	[CODSEDE] [varchar](30) NULL,
	[TIPOSITU] [decimal](10, 0) NOT NULL,
	[PAA] [decimal](3, 0) NULL,
	[MATRICULABLE] [varchar](1) NULL,
	[TIPOSITUPRO] [decimal](18, 0) NULL,
	[ESTANIVEL] [varchar](60) NULL,
	[FECHASITU] [datetime] NULL,
	[FOLIO] [varchar](20) NULL,
	[EXPEDIENTE] [varchar](10) NULL,
	[DECRETO] [varchar](10) NULL,
	[NUEVO] [varchar](1) NULL,
	[TIPO_INGRESO] [varchar](50) NULL,
	[ENCDOC] [varchar](1) NULL,
	[PERIODO_ED] [varchar](1) NULL,
	[ANO_ED] [varchar](50) NULL,
	[NUMMAXPER] [int] NULL,
	[ENTREGOTESIS] [varchar](1) NULL,
	[COMBO] [varchar](10) NULL,
	[FOLIOGRADO] [numeric](18, 0) NULL,
	[codseccteo] [int] NULL,
	[ANOSITUPRO] [int] NULL,
	[PERIODOSITUPRO] [int] NULL,
	[REGULTASIGPRO] [numeric](18, 0) NULL,
	[PERIODOS] [int] NULL,
	[COMBOAUX] [char](1) NULL,
	[codcliexterno] [varchar](30) NULL,
	[PROMEGR] [numeric](5, 0) NULL,
	[ANOEGRE] [int] NULL,
	[PERIODOEGRE] [int] NULL,
	[NIVELRANKING] [int] NULL,
	[JORNADARANKING] [varchar](1) NULL,
	[MATFRAPLAZO] [varchar](50) NULL,
	[NUMMAT] [int] NULL,
 CONSTRAINT [PK_MT_ALUMNO] PRIMARY KEY CLUSTERED 
(
	[CODCLI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
