package com.zeroToHero.FinalProject.utilities;

public class GetListPages {
    public static int[] run(int currentPage, int nOfPages)
    {
        if (nOfPages <= 5)
        {
            return new int[] {1, nOfPages};
        }
        else
        {
            if (currentPage <= 3)
            {
                return new int[] {1, 5};
            }
            else if (currentPage > nOfPages -3)
            {
                return new int[] {nOfPages - 4, nOfPages};
            }
            else
            {
                return new int[] {currentPage - 2, currentPage + 2};
            }
        }
    }
}
