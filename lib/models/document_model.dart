class DocumentoPDF {
  String? doc_title;
  String?  doc_url;
  String? doc_date;
  int? page_num;

  DocumentoPDF(this.doc_title,this.doc_date,this.doc_url,this.page_num);

  static List<DocumentoPDF> doc_list = [
    DocumentoPDF(
      "Algebra",
      "20/04/22",
      "https://sitios.ucsc.cl/pace/wp-content/uploads/sites/41/2020/03/ManualAlgebra.pdf",
      100),
  ];



}