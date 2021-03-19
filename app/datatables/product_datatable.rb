class ProductDatatable < AjaxDatatablesRails::ActiveRecord
	def view_columns
	  @view_columns ||= {
	    id:         { source: "Product.id" },
	    productName: { source: "Product.productName", cond: :like, searchable: true, orderable: true },
	    category:  { source: "Product.category",  cond: :like, nulls_last: true },
	    releaseDate:      { source: "Product.releaseDate" },
	    price:        { source: "Product.price" },
	  }
	end

	def data
	  records.map do |record|
	    {
	      id:         	record.id,
	      productName:  record.productName,
	      category:  	record.category,
	      releaseDate:  record.releaseDate,
	      price:        record.price,
	      DT_RowId:   	record.id, # This will automagically set the id attribute on the corresponding <tr> in the datatable
	    }
	  end
	end

	def get_raw_records
	  @products = Product.all
	end
end
