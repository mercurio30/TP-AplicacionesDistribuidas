USE [CentroMedico]
GO
/****** Object:  Table [dbo].[Pacientes]    Script Date: 22/06/2020 23:11:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pacientes](
	[idUsr] [int] NOT NULL,
	[pagoAlDia] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idUsr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Pacientes]  WITH CHECK ADD  CONSTRAINT [FK_PacienteIdUsr_Usuarios] FOREIGN KEY([idUsr])
REFERENCES [dbo].[Usuarios] ([id])
GO
ALTER TABLE [dbo].[Pacientes] CHECK CONSTRAINT [FK_PacienteIdUsr_Usuarios]
GO
