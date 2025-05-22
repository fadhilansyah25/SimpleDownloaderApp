using SimpleDownloaderApp.Models;

namespace SimpleDownloaderApp.Repository;

public interface IProductRepository
{
    public List<Product> GetAllProducts();
    public List<Product> GetFinishedGoodsProducts();
}