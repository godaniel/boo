namespace MetaBoo.Pipelines

import MetaBoo

class ParsePipeline(CompilerPipeline):
	static _defaultParserStepType = System.Type.GetType("Boo.AntlrParser.BooParsingStep, Boo.AntlrParser", true)
		
	override def Initialize():
		Add(_defaultParserStepType())

class CompilePipeline(ParsePipeline):
	override def Initialize():
		pass
		/*		
		pipeline.Add(IntroduceBindingService())
		pipeline.Add(BindNamespaces())
		pipeline.Add(IntroduceNameResolutionService())
		pipeline.Add(IntroduceGlobalNamespaces())
		pipeline.Add(BindAndApplyAttributes())
		pipeline.Add(ExpandMacros())
		pipeline.Add(IntroduceModuleClasses())
		pipeline.Add(NormalizeTypeMembers())
		pipeline.Add(NormalizeStatementModifiers())
		pipeline.Add(BindTypeDefinitions())
		pipeline.Add(BindTypeMembers())
		pipeline.Add(CheckTypeMemberDeclarations())
		pipeline.Add(PreOptimizeExpressions())
		pipeline.Add(IntroduceCallableResolutionService())
		pipeline.Add(ProcessMethodBodies())
		pipeline.Add(ProcessGenerators()) // for and yield
		pipeline.Add(CheckInterfaceImplementations())
		pipeline.Add(InjectCasts())
		*/

class CompileToFilePipeline(CompilePipeline):

	override def Initialize():
		pass
