private {import std.file; import std.stdio; import std.algorithm; import std.string;}

int main(){
	writeln("RQM Patch Helper");
	auto tgaFiles = filter!`endsWith(a.name,".tga")`(dirEntries(".",SpanMode.depth));
	foreach(tga; tgaFiles){
		auto qntfile = chomp(tga.name,".tga") ~ ".QNT";
		if(exists(qntfile)){
			writeln("deleting"~qntfile);
			remove(qntfile);
		}
	}
	return 0;
}