// ignore_for_file: non_constant_identifier_names, prefer_adjacent_string_concatenation, prefer_interpolation_to_compose_strings

void main(){
  List names=["nader","fady","kamal ali","mohamed"];
  Rectangular(names);
}
void Rectangular(List<dynamic> names) {
  int list_length=names.length;// we get the length of the List
  List<int>wordlength=[];  // constract empty list for words length
  //fill the words list ////////////////////
  for(int i=0;i<list_length;i++) { 
    wordlength.add(names[i].length);
  }
  // find the biggest number in wordlength list 
  int max_number=wordlength[0];
  for(int i=1;i<wordlength.length;i++){
    if(wordlength[i]>max_number){
      max_number=wordlength[i];
    }
  }
  //construct a new list with spaces 
  List<dynamic>Drawing_R=[];
  for(int i=0;i<list_length;i++){
    dynamic space=max_number-names[i].length;
    Drawing_R.add('* '+"${names[i]}"+' '*space+' *');
  }
  //add the frame to the list
  Drawing_R.insert(0,'*'*(max_number+4));
  Drawing_R.add('*'*(max_number+4));
  //print the elemnet of the last list
  for(int i=0;i<Drawing_R.length;i++){
    print(Drawing_R[i]);
  }
}