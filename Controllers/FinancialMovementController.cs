using Microsoft.AspNetCore.Mvc;
using TesteBycoders.Dal;

namespace TesteBycoders.Controllers;

[ApiController]
[Route("[controller]")]
public class FinancialMovementController : ControllerBase
{
    private readonly IConfiguration _configuration;
    private readonly ILogger<FinancialMovementController> _logger;

    public FinancialMovementController(ILogger<FinancialMovementController> logger, IConfiguration configuration)
    {
        _logger = logger;
        _configuration = configuration;
    }

    [HttpPost]
    public async Task<ActionResult<IEnumerable<FinancialMovement>>> Post(string[] data)
    {
        AccessDatabase bd = new AccessDatabase(_configuration);

        //treating the data
        foreach (var store in data)
        {
            if (store != "")
            {
                var type = store.Substring(0, 1);
                var date = store.Substring(1, 8);
                var value = store.Substring(9, 10);
                var cpf = store.Substring(19, 11);
                var card = store.Substring(30, 12);
                var hour = store.Substring(42, 6);
                var owner = store.Substring(48, 14);
                var name = store.Substring(62, store.Length - 62);

                //call Dal layer to insert the data
                bd.AddFinancialMovement(type, date, value, cpf, card, hour, owner, name);
            }
        }

        //get financialMovementbyEachStore to put in the user screen
        var financialMovementbyEachStore = bd.GetFinancialMovementbyEachStore();

        return financialMovementbyEachStore;
    }
}
