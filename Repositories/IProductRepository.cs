using SimpleDownloaderApp.Models;

namespace SimpleDownloaderApp.Repositories;

public interface IProductRepository
{
    public List<Product> GetAllProducts();
    public List<Product> GetFinishedGoodsProducts();
}