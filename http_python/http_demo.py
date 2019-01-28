from api import api
import isin_list as il
import time


def run_api():
    list_of_isins = il.list_of_isin

    for isin in list_of_isins:
        try:
            res = api(isin)
            print(res)
        except Exception as e:
            print(e)
            continue


if __name__ == "__main__":
    start_time = time.time()
    #######################################################
    # call the api
    #######################################################
    run_api()
    duration = time.time() - start_time
    print("completed in minutes", round((duration / 60), 2), " and seconds",
          round(duration, 2))
