using System;
using System.Linq;
using System.Web.UI;
using System.Xml.Linq;

namespace P2Q5
{
    public partial class index : System.Web.UI.Page
    {
        string xmlFilePath;

        protected void Page_Load(object sender, EventArgs e)
        {
            xmlFilePath = Server.MapPath("~/Books.xml");

            if (!IsPostBack)
            {
                LoadBooks();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            XElement booksXml = XElement.Load(xmlFilePath);

            int newBookId = booksXml.Elements("Book").Count() + 1;

            XElement newBook = new XElement("Book",
                new XElement("BookId", newBookId),
                new XElement("Title", TextBox1.Text),
                new XElement("Author", TextBox2.Text),
                new XElement("Price", TextBox3.Text)
            );

            booksXml.Add(newBook);
            booksXml.Save(xmlFilePath);

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";

            LoadBooks();
        }

        private void LoadBooks()
        {
            XElement booksXml = XElement.Load(xmlFilePath);
            var books = from b in booksXml.Elements("Book")
                        select new
                        {
                            BookId = b.Element("BookId").Value,
                            Title = b.Element("Title").Value,
                            Author = b.Element("Author").Value,
                            Price = b.Element("Price").Value
                        };

            GridView1.DataSource = books.ToList();
            GridView1.DataBind();
        }
    }
}
